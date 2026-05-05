## How it works

This project implements a 4-channel PWM controller with SPI configuration interface, designed for half-bridge motor and LED driving applications.

The design consists of six main blocks:

**SPI Interface** receives configuration commands from an external microcontroller using SPI Mode 0 (CPOL=0, CPHA=0) at up to 1 MHz. Each transaction consists of two bytes: an address byte (R/W bit + 5-bit address) followed by a data byte. The SCK and CS_n signals pass through a 3-stage synchronizer to safely cross into the 10 MHz internal clock domain.

**Register File** stores 15 configuration registers including prescaler (10-bit), per-channel duty cycle (8-bit each), per-channel phase offset (8-bit each), output enable mask, dead-time cycles, and a hardcoded device ID (0x50) for connection verification.

**Prescaler + PWM Core** generate the PWM waveforms. A 10-bit prescaler divides the 10 MHz system clock to produce a PWM tick. An 8-bit counter increments on each tick and is compared against each channel's duty cycle register. Phase offset is applied by adding a per-channel offset to the counter before comparison, which shifts the pulse position without affecting duty cycle. This supports phase-interleaving for multi-phase motor control.

**Dead-time Insertion** (one FSM per channel) enforces a configurable blanking period between the high-side and low-side outputs of each channel. When a transition is detected on the raw PWM signal, both outputs are driven low for `DEADTIME` clock cycles before the appropriate side is re-enabled. This prevents shoot-through in half-bridge topologies.

**Fault Protection** monitors the active-low `nFAULT` input from an external gate driver. When asserted, a latching FSM immediately drives all outputs to zero via a combinational shutdown path (no clock delay). The fault latch is only cleared when `nFAULT` returns high AND a fault-clear command is written via SPI.

**Output Mux** gates all PWM outputs through a per-channel enable mask and the global shutdown signal.

### PWM frequency

```
F_pwm = 10 MHz / ((prescaler + 1) × 256)
```

| Prescaler | F_pwm |
|-----------|-------|
| 1         | 19.5 kHz (motor) |
| 7         | 4.9 kHz (LED) |
| 781       | 50 Hz (servo) |

### Register map

| Address | Name       | R/W | Description |
|---------|------------|-----|-------------|
| 0x00    | PRE_L      | R/W | Prescaler bits [7:0] |
| 0x01    | PRE_H      | R/W | Prescaler bits [9:8] |
| 0x02    | DUTY_CH0   | R/W | Duty cycle channel 0 (0=0%, 255=~100%) |
| 0x03    | DUTY_CH1   | R/W | Duty cycle channel 1 |
| 0x04    | DUTY_CH2   | R/W | Duty cycle channel 2 |
| 0x05    | DUTY_CH3   | R/W | Duty cycle channel 3 |
| 0x06    | PHASE_CH0  | R/W | Phase offset channel 0 |
| 0x07    | PHASE_CH1  | R/W | Phase offset channel 1 |
| 0x08    | PHASE_CH2  | R/W | Phase offset channel 2 |
| 0x09    | PHASE_CH3  | R/W | Phase offset channel 3 |
| 0x0A    | ENABLE     | R/W | Output enable mask, bit[i]=1 enables channel i |
| 0x0B    | DEADTIME   | R/W | Dead-time in clock cycles (100 ns per cycle) |
| 0x0C    | FAULT_CLR  | W   | Write 1 to clear fault latch (auto-clears next cycle) |
| 0x0D    | STATUS     | R   | Bit 0 = fault_latch |
| 0x0E    | DEVICE_ID  | R   | Fixed 0x50, use to verify SPI connection |

## How to test

### Basic SPI connection test

Read the device ID register — it should always return `0x50`:

```
SPI write: 0x8E 0x00   (read address 0x0E, dummy byte)
SPI read:  returns 0x50
```

### LED dimming example

Connect LEDs with current-limiting resistors to `out_h[0..3]`. Configure via SPI from any microcontroller (Arduino, STM32, etc.):

```c
// Prescaler = 7 → ~4.9 kHz PWM (flicker-free for LEDs)
spi_write(0x00, 0x07);  // PRE_L = 7
spi_write(0x01, 0x00);  // PRE_H = 0

// Set duty cycles (0–255)
spi_write(0x02, 0x80);  // CH0 = 50%
spi_write(0x03, 0x40);  // CH1 = 25%
spi_write(0x04, 0xFF);  // CH2 = 100%
spi_write(0x05, 0x20);  // CH3 = 12.5%

// No dead-time needed for LED driving
spi_write(0x0B, 0x00);

// Enable all channels
spi_write(0x0A, 0x0F);
```

### Half-bridge motor control example

Use a gate driver IC (e.g. DRV8302, IR2110) between chip outputs and power MOSFETs. Connect `nFAULT` from the gate driver to `ui_in[3]`.

```c
// Prescaler = 1 → ~19.5 kHz (above audible range)
spi_write(0x00, 0x01);
spi_write(0x01, 0x00);

// Dead-time = 10 cycles = 1 µs (adjust for your MOSFET)
spi_write(0x0B, 0x0A);

// CH0 = 75% duty, CH1 = 75% with 90° phase offset
spi_write(0x02, 0xC0);  // DUTY_CH0
spi_write(0x03, 0xC0);  // DUTY_CH1
spi_write(0x07, 0x40);  // PHASE_CH1 = 64 → 90° offset

// Enable CH0 and CH1
spi_write(0x0A, 0x03);
```

### SPI transaction format

```
CS_n: ‾‾‾‾|_________________________________|‾‾‾‾
SCK:       |_‾_‾_‾_‾_‾_‾_‾_‾|_‾_‾_‾_‾_‾_‾_‾_‾|
MOSI:      |  Byte 1 (addr)  |  Byte 2 (data)  |
           | [R/W][A4:A0]xxx | [D7:D0]         |

R/W = 0: write, R/W = 1: read
```

### Fault recovery sequence

1. Gate driver pulls `nFAULT` low → all outputs immediately go to zero
2. Fix the fault condition (overcurrent, overtemperature, etc.)
3. Verify `nFAULT` has returned high
4. Read STATUS register — bit 0 should be 1 (fault latched)
5. Write 1 to FAULT_CLR register (0x0C) to clear the latch
6. PWM outputs resume automatically

## External hardware

**Gate driver IC** (required for motor control, optional for LED/direct load):
- Recommended: DRV8302, IR2110, or equivalent half-bridge gate driver
- Connect `out_h[i]` to high-side input, `out_l[i]` to low-side input
- Connect `nFAULT` output of gate driver to `ui_in[3]`
- If not using a gate driver, tie `ui_in[3]` high (nFAULT inactive)

**SPI master** (required):
- Any microcontroller with SPI support (Arduino, STM32, ESP32, RPi, etc.)
- SPI Mode 0 (CPOL=0, CPHA=0), SCK ≤ 1 MHz recommended
- Connect: SCK → `ui_in[0]`, MOSI → `ui_in[1]`, CS → `ui_in[2]`, MISO → `uio_out[7]`

**Power stage** (for motor control):
- N-channel MOSFET half-bridge (e.g. IRL540N, IRFZ44N)
- Bootstrap capacitor and diode for high-side gate drive
- Current sense resistor for overcurrent protection (feeds into gate driver fault pin)

**Pin connections summary:**

| TT Pin      | Signal       | Connect to |
|-------------|--------------|------------|
| `ui_in[0]`  | SCK          | SPI master SCK |
| `ui_in[1]`  | MOSI         | SPI master MOSI |
| `ui_in[2]`  | CS_n         | SPI master CS (active low) |
| `ui_in[3]`  | nFAULT       | Gate driver nFAULT, or tie high |
| `uo_out[3:0]` | out_h[3:0] | High-side gate driver inputs |
| `uo_out[7:4]` | out_l[3:0] | Low-side gate driver inputs |
| `uio_out[7]`  | MISO       | SPI master MISO |
