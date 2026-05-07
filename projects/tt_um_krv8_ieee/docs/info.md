<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The tiny 8-bit is a single-cycle, 8-bit processor designed for educational purposes, small-scale FPGA implementations, or embedded control logic. Unlike traditional complex architectures, it utilizes an Accumulator-based data path to minimize instruction complexity and register file overhead.

### Key Specifications:
**Data Width:** 8-bit.

**Instruction Width:** 16-bit (Uniform).

**Architecture:** 1-Address Accumulator Machine.

**Logic Style:** Parallel (Single-cycle execution).

**Number Systems:** Two’s Complement Signed Integer support.<p>

### Register Organization:
The CPU contains five internal 8-bit registers:<p>
|Register|Name|Description|
|:-------:|:-------:|:----:|
|ACC|Accumulator|Primary register for all ALU operations and results|
|x0|Zero|Hardwired to 0x00. Used for clears and comparisons.|
|x1 - x3|General Purpose|User-accessible storage for variables and intermediate values|

### Instruction Set Architecture (ISA)
Instructions are 16 bits wide, ensuring a simple decode stage. <p>
The format is:<p>
`[15:12] Opcode | [11:10] rs1 | [9:8] Reserved | [7:0] Immediate (Sign-Extended)`
### CPU Instruction Set Architecture (ISA)

| Opcode | Mnemonic | Operation | Description |
| :---: | :---: | :---: | :--- |
| `4'h0` | **SLT** | ACC = (ACC < rs1) ? 1 : 0 | Signed "Set Less Than" comparison. |
| `4'h1` | **LDI** | ACC = sext(imm) | Load 8-bit sign-extended immediate. |
| `4'h2` | **ADD** | ACC = ACC + rs1 | Add register to Accumulator. |
| `4'h3` | **ADI** | ACC = ACC + sext(imm) | Add sign-extended immediate. |
| `4'h4` | **STA** | rs1 = ACC | Store Accumulator into register (excludes x0). |
| `4'h5` | **SUB** | ACC = ACC - rs1 | Subtract register from Accumulator. |
| `4'h6` | **AND** | ACC = ACC & rs1 | Bitwise AND with register. |
| `4'h7` | **OR** | ACC = ACC | rs1 | Bitwise OR with register. |
| `4'h8` | **XOR** | ACC = ACC ^ rs1 | Bitwise XOR with register. |
| `4'h9` | **ANI** | ACC = ACC & imm | Bitwise AND with 8-bit raw immediate. |
| `4'hA` | **NOT** | ACC = ~ACC  | Complement of accumulator. |
| `4'hB` | **SLL** |ACC = ACC << rs1[2:0]| Logical Shift Left by register value. |
| `4'hC` | **SRL** |ACC = ACC >> rs1[2:0]| Logical Shift Right by register value. |
| `4'hD` | **SLI** | ACC = ACC << imm[2:0] | Logical Shift Left by immediate. |
| `4'hE` | **SRI** | ACC = ACC >> imm[2:0] | Logical Shift Right by immediate. |
| `4'hF` | **OUT** | Port = ACC | Output Accumulator to parallel hardware port. |

### Hardware Implementation Details
ALU (Arithmetic Logic Unit)
The ALU processes 8 bits in parallel. It handles Two's Complement subtraction and addition natively. For signed comparisons (SLT), it utilizes sign-aware logic to ensure that negative numbers (e.g., -1 / 0xFF) are correctly identified as smaller than positive numbers (e.g., 1 / 0x01).

Sign Extension Unit
To allow for compact 16-bit instructions, the constants for LDI and ADI are 6 bits. The Sign Extension Unit replicates bit 5 across the upper bits to maintain the integer's sign when expanding to 8 bits.

Timing Diagram
The CPU operates on a single-phase clock.

Rising Edge: The current instruction is sampled.

Propagation: The ALU computes the result, and the Register File selects operands.

Next Rising Edge: The result is latched into the ACC or the destination register.
## How to test

Apply 16-bit instruction code at the input via switches. The process may be automated by connecting the input from any MCU or FPGA.

## External hardware

MCU or FPGA for providing the 16-bit input (instruction code) to CPU. Input may be applied via switches but its a hectic job and practically not feasible. Any MCU such as ESP32 may be used for providing inputs.
