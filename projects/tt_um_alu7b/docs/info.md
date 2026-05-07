# 7-bit ALU — Serial Input / Parallel Output

**Bootcamp IC Design & Fabrication — IEEE OpenSilicon / IEEE CASS UTP 2026**  
Shuttle: SKY26a · PDK: sky130A (130 nm) · Tile: 1×1  
**Author:** Sharif Obando 

---

## Overview

This project implements a **7-bit Arithmetic Logic Unit (ALU)** for silicon fabrication through the TinyTapeout platform (shuttle SKY26a, PDK sky130A, 130 nm SkyWater process).

The system receives two 7-bit operands **serially** through a single input pin (`ui_in[0]`), using LSB-first format. The 8-bit result is presented **in parallel** on `uo_out[7:0]` once computation is complete. The `Done` signal pulses for exactly one clock cycle on `uio_out[0]` to indicate that the result is valid and stable.

---

## How It Works

### Serial Input Protocol

Data is transmitted bit-by-bit through `ui_in[0]` (`Bit_in`), captured on the **rising edge** of `clk`, **LSB first**. The opcode `op[2:0]` is a **stable parallel input** applied on `ui_in[3:1]` throughout the entire operation — it does not need to be serialised.

```
reg_A <= { Bit_in, reg_A[6:1] };   // Rising edges 1..7   → Operand A [6:0]
reg_B <= { Bit_in, reg_B[6:1] };   // Rising edges 8..14  → Operand B [6:0]
```

| Clock Cycle(s) | Data Captured | Register Loaded |
|---|---|---|
| 1 .. 7 | Operand A [6:0], LSB first | `reg_A` |
| 8 .. 14 | Operand B [6:0], LSB first | `reg_B` |
| 15 | FSM → S_CALC | `reg_result` latched, `Done = 1` |

The shift register uses a **shift-right with MSB insertion** mechanism. After N rising edges with bits b₀, b₁, ... bₙ₋₁ (LSB first), the register holds `{bₙ₋₁, ..., b₁, b₀}` in natural order, with `reg[0]` = original LSB.

### Supported Operations

| `op[2:0]` | Operation | RTL Expression | Bit [7] |
|---|---|---|---|
| `000` | **ADD** | `{1'b0, A} + {1'b0, B}` | Carry-out |
| `001` | **AND** | `{1'b0, A & B}` | Always `0` |
| `010` | **OR** | `{1'b0, A \| B}` | Always `0` |
| `011` | **XOR** | `{1'b0, A ^ B}` | Always `0` |
| `100` | **SUB** | `{1'b0, A} - {1'b0, B}` | Borrow (two's complement) |

> **Bit 7 of the result:** In addition it indicates *carry-out* (result ≥ 128); in subtraction it indicates *borrow* (result negative, two's complement). For AND, OR, and XOR, bit 7 is always `0`.

### Finite State Machine (FSM)

The controller `serial_alu_ctrl` implements a three-state synchronous Moore FSM:

```
S_RECV ──(bit_count == 13)──► S_CALC ──(1 cycle)──► S_DONE
  ▲                                                      │
  └──────────────────────(rst_n = 0)────────────────────┘
```

- **S_RECV:** LSB-first serial capture using a shift-right shift register. `bit_count` increments on each rising edge. When `bit_count == 13` (14 bits received: 7 for A + 7 for B), FSM transitions to `S_CALC`.
- **S_CALC:** `reg_A` and `reg_B` are stable. The combinational ALU output is latched into `reg_result` and `done_reg` is asserted for exactly one clock cycle. FSM moves to `S_DONE`.
- **S_DONE:** Result is stable on `Data_out`. System waits for `rst_n = 0` to restart.

---


## Pin Map

### Inputs

| Pin | Signal | Description |
|---|---|---|
| `ui[0]` | `Bit_in` | Serial data input — LSB first: 7 bits A, then 7 bits B |
| `ui[1]` | `op[0]` | Opcode bit 0 (LSB) — stable parallel input during the full operation |
| `ui[2]` | `op[1]` | Opcode bit 1 |
| `ui[3]` | `op[2]` | Opcode bit 2 (MSB) |
| `ui[7:4]` | — | Unused (tied internally via `_unused` wire) |
| `clk` | CLK | System clock — up to 50 MHz |
| `rst_n` | /RST | Active-low synchronous reset — returns FSM to S_RECV, clears all registers |

### Outputs

| Pin | Signal | Description |
|---|---|---|
| `uo[0]` | `Data_out[0]` | Result bit 0 — LSB |
| `uo[1]` | `Data_out[1]` | Result bit 1 |
| `uo[2]` | `Data_out[2]` | Result bit 2 |
| `uo[3]` | `Data_out[3]` | Result bit 3 |
| `uo[4]` | `Data_out[4]` | Result bit 4 |
| `uo[5]` | `Data_out[5]` | Result bit 5 |
| `uo[6]` | `Data_out[6]` | Result bit 6 — MSB of operand field |
| `uo[7]` | `Data_out[7]` | Carry-out (ADD) or Borrow flag (SUB) |
| `uio[0]` | `Done` | One-cycle high pulse when the operation result is valid |
| `uio[7:1]` | — | Always `0` (driven low) |

> `uio_oe = 8'b0000_0001`: only `uio[0]` is configured as a digital output.

---

## How to Test

### Step-by-Step Operating Procedure

1. Assert reset: drive `rst_n = 0` for at least 2 clock cycles to initialise the FSM to `S_RECV` and clear all internal registers.
2. Release reset: drive `rst_n = 1`.
3. Set the opcode on `ui_in[3:1]` (`op[2:0]`) and keep it stable for the duration of the operation.
4. Send the 7 bits of **Operand A** through `ui_in[0]`, **LSB first**, one bit per rising clock edge (7 rising edges total).
5. Send the 7 bits of **Operand B** through `ui_in[0]`, **LSB first**, one bit per rising clock edge (7 rising edges total). After the 14th rising edge, the FSM automatically transitions to `S_CALC`.
6. On the **15th rising edge**, the FSM executes `S_CALC`: `uo_out[7:0]` holds the valid result, and `uio_out[0]` (`Done`) pulses high for exactly one clock cycle.
7. Read the result on `uo_out[7:0]`. Assert reset again to start a new operation.

### Example: 20 + 30 = 50 (ADD)

```
Operand A = 20 = 7'b0010100  →  send LSB first: 0, 0, 1, 0, 1, 0, 0  (7 edges)
Operand B = 30 = 7'b0011110  →  send LSB first: 0, 1, 1, 1, 1, 0, 0  (7 edges)
Opcode    =  0 = 3'b000      →  ui_in[3:1] = 3'b000  (parallel, stable)

Expected result: uo_out = 8'b00110010 = 8'h32 = 50
Done = 1 on cycle 15 (one clock cycle only)
```

### Example: 10 − 30 (SUB — Two's Complement Underflow)

```
Operand A = 10, Operand B = 30, op = 3'b100 (SUB)

Result = (10 - 30) & 0xFF = 0xEC = 236
Bit[7] = 1 → borrow flag: result is negative in two's complement.
Magnitude = 256 - 236 = 20  (i.e., -(20) represented in 8-bit two's complement)
```

### Example: 0x7F AND 0x55 (AND — Partial Mask)

```
Operand A = 0x7F = 7'b1111111
Operand B = 0x55 = 7'b1010101
op = 3'b001 (AND)

Result = {1'b0, 7'b1111111 & 7'b1010101} = {1'b0, 7'b1010101} = 8'h55
Bit[7] = 0 (always for logical operations)
```

---

## External Hardware

No external hardware is required for functional verification in simulation.

Optional hardware for physical demonstration on the TinyTapeout DevKit:

- LEDs connected to `uo_out[7:0]` for visual result display.
- Push buttons or a microcontroller for manual serial data entry and clock stepping.
- Logic analyser for protocol-level waveform inspection.
- FPGA board running the TinyTapeout ASIC Simulator (ICE40UP5K bitstream).
