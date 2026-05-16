<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a configurable 4-bit Arithmetic Logic Unit (ALU) with registered inputs and an independent, synchronous Status Flag Generator. The architecture is optimized for educational digital design and compact ASIC implementations.

### 1. Data Input Pipeline
The design contains two internal 4-bit registers: A and B. 
* Data is fed through the dedicated input bus ui_in. The lower nibble ui_in[3:0] represents the data for register A, while the upper nibble ui_in[7:4] represents the data for register B.
* Clock-gating logic is controlled by the enReg (uio_in[3]) signal. Both registers capture data synchronously on the rising edge of the clk signal only when enReg is asserted high (1).

### 2. Execution Units
The hardware is split into two specialized combinational blocks:

* ALU Core (ALUcontrol): Processes the current values of registers A and B to produce an 8-bit output (uo_out). Extending the output to 8 bits guarantees that arithmetic operations such as Addition and Multiplication never undergo data truncation or arithmetic overflow.
* Flag Control Stage (flagcontrol): An independent condition-code multiplexer. It evaluates conditional statements comparing register values or checking structural bit properties (such as parity or zero-detection) and outputs a single-bit result (Status_Flag) mapped directly to the bidirectional pin uio_out[7].

---

## How to test

The project requires synchronous operation. Ensure your clock (clk) is toggling and the active-low reset (rst_n) has been pulsed high-to-low-to-high before starting.

### Step 1: Load Input Data into Registers A and B
1. Place your target 4-bit values on ui_in[3:0] (for A) and ui_in[7:4] (for B).
2. Set the register enable pin uio_in[3] to 1.
3. Apply a clock pulse (rising edge on clk). The values are now latched inside the chip.
4. Clear uio_in[3] to 0 if you wish to lock these values and prevent them from changing during subsequent operations.

### Step 2: Execute an ALU Operation
Set the operation code on the ALUcontrol bus (uio_in[2:0]). The result will instantly appear as a combinational output on uo_out[7:0].

| ALUcontrol (uio[2:0]) | Operation | Mathematical Description |
| :---: | :---: | :--- |
| 3'b000 | Addition | out = A + B |
| 3'b001 | Subtraction | out = A - B |
| 3'b010 | Logical Shift Right | out = A >> 1 (Padded with 0s) |
| 3'b011 | Logical Shift Left | out = A << 1 (Padded with 0s) |
| 3'b100 | Bitwise AND | out = A & B |
| 3'b101 | Bitwise OR | out = A | B |
| 3'b110 | Bitwise XOR | out = A ^ B |
| 3'b111 | Multiplication | out = A * B |

### Step 3: Evaluate Status Flags
Set the condition code on the flagcontrol bus (uio_in[6:4]). Read the resulting boolean true/false state from the physical pin uio_out[7].

| flagcontrol (uio[6:4]) | Condition Target | Condition Evaluated (Status_Flag) |
| :---: | :---: | :--- |
| 3'b000 | Register A | 1 if A > B, else 0 |
| 3'b001 | Core Identity | 1 if A == B, else 0 |
| 3'b010 | Register A | 1 if A == 0, else 0 (Zero-detect) |
| 3'b011 | Register A | 1 if A is Even, else 0 (Even parity) |
| 3'b100 | Register B | 1 if B > A, else 0 |
| 3'b101 | Core Identity | 1 if A == B, else 0 (Redundant Check) |
| 3'b110 | Register B | 1 if B == 0, else 0 (Zero-detect) |
| 3'b111 | Register B | 1 if B is Even, else 0 (Even parity) |

---

## External hardware

This project is completely self-contained and does not mandate specialized external peripherals or custom PMODs to function. It is fully compatible with standard digital testing environments.
