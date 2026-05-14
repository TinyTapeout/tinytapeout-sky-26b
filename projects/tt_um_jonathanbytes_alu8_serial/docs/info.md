<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The ALU8 Serial is an 8-bit Arithmetic Logic Unit that processes two operands (A and B) shifted in serially. It supports eight different operations and provides parallel output for the result and status flags.

### Operation Sequence:
1.  **Initialization**: At the first clock cycle after reset (or when starting a new operation), the ALU latches the operation code (`op[2:0]`) and the initial `Carry_in` from the input pins.
2.  **Operand A**: For the first 8 clock cycles, bits are shifted into Operand A (LSB-first) through the `Bit_in` pin.
3.  **Operand B**: For the next 8 clock cycles (cycles 9 to 16), bits are shifted into Operand B (LSB-first) through the `Bit_in` pin.
4.  **Computation**: On the 16th clock cycle, the ALU performs the selected operation on the accumulated operands.
5.  **Completion**: The `Done` signal goes high, and the 8-bit result is presented on the `uo_out` pins. Status flags (Carry, Zero, Negative, Overflow) are updated on the bidirectional `uio` pins.

### Operations:
*   `000`: **ADD** (A + B + Carry_in)
*   `001`: **SUB** (A - B - Carry_in)
*   `010`: **AND** (A & B)
*   `011`: **OR**  (A | B)
*   `100`: **XOR** (A ^ B)
*   `101`: **NOT** (~A)
*   `110`: **SHL** (A << 1, MSB to Carry)
*   `111`: **SHR** (A >> 1, LSB to Carry)

## How to test

To test the ALU, you can follow these steps:
1.  **Reset**: Pulse `rst_n` low to initialize the internal state.
2.  **Setup**: Set the desired operation on `ui_in[3:1]` and `Carry_in` on `ui_in[4]`.
3.  **Shift A**: Provide 8 bits of operand A on `ui_in[0]`, pulsed by `clk`.
4.  **Shift B**: Provide 8 bits of operand B on `ui_in[0]`, pulsed by `clk`.
5.  **Read**: After the 16th bit, check `uio_out[4]` (Done). If high, the result is valid on `uo_out[7:0]` and flags are on `uio_out[3:0]`.

## External hardware

No specific external hardware is required. The design can be interfaced with:
*   A microcontroller to automate the serial shifting and result verification.
*   Logic analyzers or oscilloscopes to monitor the serial input and parallel output.
*   Switches and LEDs for manual testing at low clock frequencies.
