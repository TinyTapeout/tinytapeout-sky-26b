<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a structural **4-bit Ripple Carry Adder (RCA)**. It computes the arithmetic sum of two 4-bit unsigned binary numbers ($A$ and $B$) and generates a 5-bit result ($S$).

The hardware architecture uses a modular, multi-stage structure:
1. **Least Significant Bit (Stage 0):** A Half Adder (`sumadormedio`) processes $A[0]$ and $B[0]$ to produce the first sum bit $S[0]$ and an initial carry-out $C[0]$.
2. **Intermediate Bits (Stages 1 to 3):** Three Full Adders (`sumadorcompleto`) sequentially cascade the carry-out from the previous stage ($C_{in}$) with the respective input bits ($A[i]$ and $B[i]$) to compute $S[i]$ and the next $C_{out}$.
3. **Most Significant Bit / Overflow:** The final carry-out from the third full adder ($C[3]$) is mapped directly to $S[4]$, representing the final overflow or MSB of the 5-bit result.

Since this design does not include sequential elements (registers or flip-flops), it operates entirely as a **combinational block**. The global clock (`clk`), reset (`rst_n`), and enable (`ena`) inputs are properly tied off internally to avoid linting warnings during the OpenLane/Yosys synthesis flow.

## How to test

To test the operation of the 4-bit adder on the TinyTapeout demoboard:

1. **Set the Inputs:** * Use the first four input switches `ui_in[3:0]` to set the 4-bit binary value for operand **A**.
   * Use the next four input switches `ui_in[7:4]` to set the 4-bit binary value for operand **B**.
2. **Observe the Outputs:**
   * Read the 5-bit result from the dedicated outputs `uo_out[4:0]`.
   * `uo_out[0]` corresponds to the LSB ($S[0]$), and `uo_out[4]` corresponds to the final carry-out / MSB ($S[4]$).
   * The remaining output pins `uo_out[7:5]` will stay at a logic low level (`0`).

For example, if you set $A = 0101$ (5 in decimal) on `ui_in[3:0]` and $B = 0111$ (7 in decimal) on `ui_in[7:4]`, the output pins `uo_out[4:0]` will display `01100` (12 in decimal).

## External hardware

No specialized external hardware are strictly required. 
