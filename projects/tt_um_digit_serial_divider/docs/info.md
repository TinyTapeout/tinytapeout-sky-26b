# IEEE | 24-Bit Digit-Serial Fixed-Point Divider

## Project description

A 24-bit digit-serial restoring divider implemented in Verilog for the Tiny Tapeout (SKY130) flow. The design computes fixed-point quotients with 23 fractional bits using a repeatable micro-step performed by a compact datapath and a small FSM.

**Top-level**:
 - `tt_um_digit_serial_divider`

**Core modules**: 
- `digit_serial_divider`
- `digit_serial_divider_core` (which instantiates `datapath` and `controlpath`)

## How does it work?

**Overview**
- The interface accepts operand bits serially. The wrapper captures 24-bit fixed-point values for dividend and divisor (LSB-first) while a start signal is asserted.

**Compute flow** (general)
1. Load phase: the controller enables serial loading of both operands into internal shift/buffer registers. When loading completes, the core is triggered to start computation.
2. Iterative compute phase: the control FSM sequences a repeated micro-step for N = 24 iterations. Each micro-step:
   - Aligns or shifts the current remainder and introduces the next dividend bit into the remainder path.
   - Subtracts the aligned divisor from the extended remainder to form a candidate residue.
   - Uses the subtraction sign (borrow flag) to decide whether to accept the candidate residue or keep the previous remainder. The accepted result determines the quotient bit for that iteration.
   - Stores the quotient bit into a serial shift register.
3. Completion: a small counter tracks the number of micro-steps. After N iterations the controller signals DONE and the computed 24-bit quotient is available in parallel inside the core and can be shifted out serially by the top-level wrapper.

**Datapath** (conceptual)
- A remainder register wider than the operand (one extra bit) holds the running residue.
- A register holds the divisor aligned to the remainder width.
- A dedicated subtractor produces the candidate residue and a borrow flag used by the decision logic.
- A residue multiplexer selects either the candidate or the previous remainder depending on the subtractor result.
- A shift register collects quotient bits serially and presents the parallel quotient after completion.

**Control** (conceptual)
- The FSM has three main phases: start/load, compute, and count/check. It toggles control signals to enable operand loading, remainder updates, and quotient shifting. Transitions depend on the start input, the subtractor borrow flag, and the iteration counter overflow.

## How to test it?

Follow this exact procedure:

1. Apply reset: assert `rst = 1` to initialize internal registers; after the reset period deassert `rst`.
2. Convert operands to 24-bit fixed-point (23 fractional bits):

   `value_int = round(value_real * 2**23)`

3. Maintain `START = 1` while shifting 24 bits of X and Y LSB-first onto `ui_in[0]` and `ui_in[1]` (one clock per bit).
4. Lower `START` when the 24-bit load is complete.
5. Wait for `DONE = 1`.
6. Read `q` for 24 clock cycles while `DONE` is active to capture the quotient bits (LSB-first).
7. Wait for `DONE` to return to `0` before starting another operation.

Example

- Scaled inputs: `X_int = round(1.789634233478 * 2**23)`, `Y_int = round(1.974231473301 * 2**23)`
- Expected quotient (real): `1.789634233478 / 1.974231473301 = 0.906496644020081`

Verification notes

- `DONE` must assert after 24 micro-iterations.
- The captured serial quotient must match the fixed-point result within the 23-bit fractional resolution.


Files of interest
- src/tt_um_digit_serial_divider.v
- src/digit_serial_divider.v
- src/digit_serial_divider_core.v
- src/datapath.v
- src/controlpath.v
- src/fsm.v
- dv/tb_digit_serial_divider.v

---

## External Hardware

To test this design on silicon, the most practical approach is to use an external microcontroller as a test bench.

Recommended setup:

**Microcontroller options**: Arduino, Raspberry Pi Pico, STM32, ESP32, or any platform capable of GPIO bit-banging.

**Microcontroller responsibilities**:
- Generate and control the clock (`clk`) signal.
- Drive the reset signal (`rst`).
- Assert and manage the start signal (`ui_in[2]`).
- Serially present operand bits on `ui_in[0]` (X) and `ui_in[1]` (Y) with precise timing.
- Monitor and read the DONE signal (`uo_out[1]`).
- Capture quotient bits from `uo_out[0]` over N clock cycles while DONE is asserted.

The microcontroller can log results, compare against expected fixed-point quotients, and report pass/fail status for each test vector.
