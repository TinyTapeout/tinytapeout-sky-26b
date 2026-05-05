## How it works

miniCPU is a minimal 8-bit accumulator-based processor designed for **Tiny Tapeout ASIC fabrication**.
It implements a compact custom ISA and executes a small program that generates a visually observable LED pattern (Knight Rider-style scanner).

The design emphasizes:
* Minimal area usage
* Clean synchronous architecture
* Simple, deterministic behavior
* Easy-to-understand instruction set
* Programmable via custom ROM instructions

### Features

* 8-bit accumulator (`A`)
* 8-bit secondary register (`B`)
* 5-bit program counter (32 instructions)
* 8-bit output register (drives `uo_out`)
* 16-cycle clock divider for visible output timing
* Custom 8-bit instruction format

### Instruction Set Architecture (ISA)

**Instruction Format:**
![format](./format.svg)

**Core Instructions:**
![instructions](./opcode.svg)

**ALU Sub-operations (opcode 011):**
![alu subops](./alu.svg)

### Architecture & Program Behavior

* Single-cycle FSM CPU with clock enable
* Combinational ALU producing `next_a`
* Synchronous register updates on enabled clock edges
* ROM implemented as combinational case statement
* 4-bit clock divider for human-visible timing (16x division)
* Designed for a **100 kHz** clock, resulting in a smooth ~40 Hz LED update rate for the scanner program.

The included ROM program implements a **bidirectional LED scanning pattern**:
1. Load value 1 into accumulator
2. Shift left until overflow
3. Reverse direction using shift right
4. Repeat continuously

This creates a **Knight Rider-style sweeping LED effect** on `uo_out[7:0]`.

### I/O Mapping
* `ui_in`: Input port (read via IN instruction)
* `uo_out`: Output LED pattern (from OUT instruction)
* `uio_*`: Disabled (not used)

## How to test

1. Apply a clock signal to `clk` (e.g., 100 kHz or slower for visibility).
2. Apply reset (`rst_n = 0`) for at least 10 clock cycles.
3. Release reset (`rst_n = 1`).
4. Observe `uo_out[7:0]`.

### Expected behavior

The output should show a shifting LED pattern:
* A single "1" bit moves from LSB → MSB
* Then reverses direction from MSB → LSB
* This repeats continuously

**Example sequence on `uo_out`:**
```text
00000001
00000010
00000100
...
01000000
10000000
01000000
...
```

### Optional input test
* `ui_in[0]` is read by the CPU using the IN instruction. You can toggle it to verify input responsiveness (if enabled in program flow).

### Cocotb simulation
Run the provided testbench:
```bash
make test
```
This verifies correct reset behavior, output sequence, and looping execution.

## External hardware

No external hardware is required for this project.

The design is fully self-contained and operates entirely using the Tiny Tapeout standard I/O:
* `uo_out[7:0]`: **Drives external LEDs** (recommended for visualization)
* `ui_in[7:0]`: **Optional digital input switches** (not required for basic operation)
* `uio_*`: Not used (bidirectional pins disabled)

**Recommended optional setup:** To observe behavior more clearly during bring-up, connect 8× LEDs to `uo_out[7:0]`. No PMODs, displays, or additional complex components are required.
