<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The chip connects to the RP2040 over SPI. The RP2040 sends a command byte followed by data bytes, the chip performs the requested operation, and the result is read back. Operations that take multiple clock cycles (divide, dot product) assert a BUSY pin so the RP2040 can poll or busy-wait.

Internally the design has three parts:

- **SPI slave** — receives and transmits bytes, synchronising the SPI clock into the chip's own clock domain
- **Divider** — iterative 16-bit signed divider, takes 16 clock cycles, computes `reg_a / reg_b`
- **Command brain** — state machine that decodes commands, holds operand registers, weight registers, and MAC accumulator, drives all operations

All arithmetic uses **Q8.8 signed fixed-point** (16-bit two's complement). To encode a float: `(int16_t)(f * 256.0f)`. To decode: `(float)result / 256.0f`.

### Kalman filter usage

The chip accelerates the three expensive operations in a scalar Kalman update step:

```
Predict:   P⁻ = P + Q               (RP2040 does this — just one addition)
Update:    K  = P⁻ / (P⁻ + R)       → load A=P⁻, B=(P⁻+R), issue DIV
           x̂  = x̂ + K·(z − x̂)      → issue MUL, add result on RP2040
           P  = (1 − K) · P⁻         → issue MUL
```

The RP2040 computes `P⁻ + R` in one integer instruction (the chip does not need a third register). The chip handles all three multiplications and the division.

### Neural network dot product

Eight 5-bit signed weights (Q1.4 format, range −1.0 to +0.9375) can be pre-loaded into the chip once. To run inference, stream 8 unsigned input bytes one at a time. The chip multiplies each input by the corresponding weight and accumulates the result. When all 8 have arrived, the Q8.8 dot product is available in the result register.


## How to test

### Wiring

| RP2040 GPIO | Chip pin | Function |
|---|---|---|
| GP18 | uio[0] | SPI SCK |
| GP19 | uio[1] | SPI MOSI |
| GP17 | uio[2] | SPI CS# (active low) |
| GP16 | uio[3] | SPI MISO |
| GP20 | uio[4] | BUSY (high while operation running) |
| GP21 | uio[5] | DONE (pulses high for 1 clock when result ready) |

`uo_out[7:0]` always holds the high byte of the last result — useful for a quick sanity check without issuing a full read.

### SPI settings

- **Mode 0** (CPOL=0, CPHA=0)
- **MSB first**
- **8-bit frames**
- **Max clock: 4 MHz** (limited by synchroniser latency; the chip runs at 50 MHz internally)

### Command reference

All commands are sent as an 8-bit command byte, followed by the data bytes shown.

| Command | Hex | Data bytes | Description |
|---|---|---|---|
| LOAD_A | `0x10` | HI, LO | Load operand A (Q8.8, MSB first) |
| LOAD_B | `0x11` | HI, LO | Load operand B (Q8.8, MSB first) |
| LOAD_W | `0x13` | IDX, DAT | Load weight[IDX] = DAT[4:0] (Q1.4) |
| MAC_START | `0x14` | — | Clear accumulator, prepare for 8 input bytes |
| MAC_BYTE | `0x15` | DAT | Stream one input byte; repeat 8 times after MAC_START |
| MUL | `0x20` | — | result = A × B (Q8.8, instant) |
| DIV | `0x21` | — | result = A / B (Q8.8, 16 clock cycles) |
| READ_HI | `0x30` | DUM | MISO returns result[15:8] (send one dummy byte) |
| READ_LO | `0x31` | DUM | MISO returns result[7:0] (send one dummy byte) |
| READ_STAT | `0x3F` | DUM | MISO returns `{ovf, dbz, busy, done, 4'b0}` |

**Reading a result** requires two separate SPI transactions (CS must be deasserted between them):

```
CS low  → send 0x30 → send 0x00 → read MISO (high byte) → CS high
CS low  → send 0x31 → send 0x00 → read MISO (low byte)  → CS high
```

**Running a dot product** (after weights are loaded):

```
CS low  → send 0x14 → CS high                          (start MAC)
CS low  → send 0x15 → send input[0] → CS high          (byte 0)
CS low  → send 0x15 → send input[1] → CS high          (byte 1)
... repeat for inputs 2–7 ...
wait until BUSY goes low
read result with 0x30 / 0x31
```

### Fixed-point formats

| Data | Format | Range | Step |
|---|---|---|---|
| Operands A, B, result | Q8.8 signed (16-bit) | −128.0 to +127.996 | ~0.004 |
| MAC weights | Q1.4 signed (5-bit) | −1.0 to +0.9375 | 0.0625 |
| MAC inputs | Unsigned 8-bit | 0 to 255 | 1 |

Encode a float to Q8.8 in C: `(int16_t)(f * 256.0f)`  
Encode a float to Q1.4 weight: `(int8_t)(f * 16.0f)`, clamped to ±15  
Decode Q8.8 to float: `(float)raw / 256.0f`


## External hardware

No external components required. BUSY and DONE pins are optional — the RP2040 can also poll status via the READ_STAT command.
