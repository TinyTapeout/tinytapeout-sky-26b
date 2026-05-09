## How it works

This project implements a TinyTapeout-friendly minimal 8-bit CPU with a compact accumulator-based architecture.

The processor contains:

- An 8-bit accumulator register
- A 4-bit program counter
- 16 × 8-bit program ROM
- 16 × 8-bit data RAM

The CPU executes one instruction per clock cycle. Each instruction is 8 bits wide and follows the format:

- Upper 4 bits: Opcode
- Lower 4 bits: Operand / address

Supported instructions include:

- Arithmetic: ADD, SUB
- Logic: AND, OR, XOR
- Memory operations: LD, ST
- Branching: JMP, JZ, JN
- I/O operations: INP, INIO, OUT, OUTIO

The default ROM program continuously:

1. Reads the external input pins (`ui_in`)
2. Stores the value in the accumulator
3. Sends the value to output pins (`uo_out`)
4. Pulses the value onto bidirectional I/O pins (`uio_out`)
5. Repeats forever using a jump instruction

This demonstrates basic instruction execution, program flow, and I/O interfacing in a very small silicon footprint suitable for a single TinyTapeout tile.

---

## How to test

1. Apply a clock signal to the design.
2. Keep `ena` high to allow CPU execution.
3. Assert `rst_n = 0` briefly to reset the CPU.
4. Release reset by setting `rst_n = 1`.

Testing behavior:

- Apply any 8-bit value on `ui_in[7:0]`
- The CPU reads this value using the `INP` instruction
- The value appears on:
  - `uo_out[7:0]`
  - `uio_out[7:0]` for one clock cycle

Example:

- If `ui_in = 8'b10101010`
- Then `uo_out` will become `10101010`

The program continuously loops, so changing `ui_in` dynamically updates the outputs.

---

## External hardware

No external hardware is required.

Optional external hardware for demonstration:

- DIP switches or buttons connected to `ui_in`
- LEDs connected to `uo_out`
- Logic analyzer for observing instruction execution and I/O activity
