
## How it works

The design implements a **TinyCrypto-8: An 8-Bit Pipelined ALU with Hardware Cryptography**. It optimizes instruction throughput by overlapping the fetch and execution phases..It optimizes instruction throughput by overlapping the fetch and execution phases
## Inputs
| Pin  | Name        | Logic Level              | Description |
|------|------------|--------------------------|-------------|
| ui[0] | MOD        | 0 = Program, 1 = Execute | Switches between SIPO programming mode and CPU execution mode. |
| ui[1] | RE         | High = Run               | Read Enable: Acts as the "Run" button for the Program Counter (PC). |
| ui[2] | SIPO_IN0   | Serial Bit               | Serial input for bits 3–0 (Low nibble) of the instruction. |
| ui[3] | SIPO_IN1   | Serial Bit               | Serial input for bits 7–4 (Mid nibble) of the instruction. |
| ui[4] | SIPO_IN2   | Serial Bit               | Serial input for bits 11–8 (High nibble) of the instruction. |
| ui[5] | DATA_VALID | Pulse                    | Handshake clock used to shift bits into the SIPO register. |
| ui[6] | NC         | -                        | Not Connected / Reserved. |
| ui[7] | NC         | -                        | Not Connected / Reserved. |

## Outputs
| Pin  | Name      | Description |
|------|----------|-------------|
| uo[0] | ACC_Bit0 | Accumulator Bit 0 (Least Significant Bit) |
| uo[1] | ACC_Bit1 | Accumulator Bit 1 |
| uo[2] | ACC_Bit2 | Accumulator Bit 2 |
| uo[3] | ACC_Bit3 | Accumulator Bit 3 |
| uo[4] | ACC_Bit4 | Accumulator Bit 4 |
| uo[5] | ACC_Bit5 | Accumulator Bit 5 |
| uo[6] | ACC_Bit6 | Accumulator Bit 6 |
| uo[7] | ACC_Bit7 | Accumulator Bit 7 (Most Significant Bit) |

### Stage 1: Instruction Fetch (IF)
* **SIPO Interface**: Instructions are received serially through a 3-lane input and converted into a **12-bit parallel instruction** using a Serial-In Parallel-Out (SIPO) register.
* **Program Counter (PC)**: Holds the address of the next instruction and increments by 1 to point to the next entry in memory.
* **Instruction Memory (ROM)**: A **12x8-bit memory** that fetches the 12-bit instruction using the current PC value.
* **Instruction Register (IR)**: Temporarily stores the fetched 12-bit instruction.

### Stage 2: Execute (EX)
* **IF/EX Pipeline Register**: Marks the boundary between stages.It receives the instruction from the IR and passes it to the execution logic.
* **Decoder**: Interprets the 12-bit instruction by decoding the opcode to generate control signals for the ALU and memory.
* **Integrated ALU (8-bit)**: Performs arithmetic, logical, and cryptographic operations. It includes:
    * **Arithmetic/Logic**: ADD, SUB, AND, OR, XOR, NOT, INC, and DEC.
    * **Shift Operations**: SHL (Shift Left) and SHR (Shift Right) for bit manipulation.
    * **Flag Logic**: Updates Zero ($Z$), Negative ($N$), and Carry ($C$) flags based on the operation result.
    * **LFSR Crypto Engine**: A Linear Feedback Shift Register used for stream encryption/decryption (XORing data with a pseudo-random seed).
    * **Accumulator (ACC)**: An 8-bit register that stores intermediate or final results.
* **Data Memory (RAM)**: A memory module used for **LOAD** and **STORE** operations.



---

## Technical Specifications

* **Instruction Width**: 12 bits.
**Data Width**: 8 bits
* **Pipeline Stages**: 2 (Fetch, Execute)
* **Cryptographic Engine**: 8-bit LFSR with polynomial $x^8 + x^6 + x^5 + x^4 + 1$.
* **Status Flags**: 
    * **Zero (Z)**: Set if result is `0`.
    * **Negative (N)**: Set if Most Significant Bit (MSB) is `1`.
    * **Carry (C)**: Set if operation results in an overflow or a shift-out.

---

## How to test

The design is verified using a comprehensive **testbench** (`tb_Processor_Top`)

* **SIPO Stimulus**: The 12-bit instruction is fed through serial lanes over multiple clock cycles.
* **ALU Verification**: Test cases verify arithmetic accuracy and that flags ($Z, N, C$) update correctly.
* **Crypto Testing**: The `LOAD_SEED` operation initializes the LFSR, followed by `CRYPTO` operations to verify encrypted data output.


| Category        | Opcode (4-bit) | Mnemonic | Operation | Description |
|-----------------|----------------|----------|-----------|-------------|
| Arithmetic      | 4'b0000        | ADD      | A + B     | Adds Accumulator and Operand |
|                 | 4'b0001        | SUB      | A - B     | Subtracts Operand from Accumulator |
|                 | 4'b1010        | INC      | A + 1     | Increments Accumulator by 1 |
|                 | 4'b1011        | DEC      | A - 1     | Decrements Accumulator by 1 |
| Logic           | 4'b0010        | AND      | A & B     | Bitwise AND |
|                 | 4'b0011        | OR       | A \| B    | Bitwise OR |
|                 | 4'b0110        | XOR      | A ⊕ B     | Bitwise XOR |
|                 | 4'b0100        | NOT      | ~A        | Bitwise inversion of Accumulator |
| Data/Comparison | 4'b0101        | MOV      | B → A     | Moves operand value into Accumulator |
|                 | 4'b0111        | CMP      | A - B     | Updates flags without changing ACC |
| Shifts          | 4'b1000        | SHL      | A << 1    | Shift left, MSB → Carry |
|                 | 4'b1001        | SHR      | A >> 1    | Shift right, LSB → Carry |
| Cryptography    | 4'b1100        | LOAD_SEED| LFSR = B  | Loads initial seed into LFSR |
|                 | 4'b1101        | CRYPTO   | A ⊕ LFSR  | XOR of ACC with LFSR stream |

## External Hardware Required

This project does not require any external hardware.

The ALU operates entirely on digital signals (ui_in, uo_out) and is designed for simulation or integration into a larger digital system.

For optional hardware testing, the following setups may be used:

Basic Verification:
A microcontroller (e.g., Arduino Uno, Raspberry Pi Pico, or ESP32) can drive ui_in with test patterns and read uo_out for validation.
## Applications
* Lightweight Security: The integrated LFSR Crypto Engine allows for hardware-level stream encryption in IoT devices.

* Embedded Control: Efficiently handles logic for low-power systems like traffic light controllers or smart home actuators.

* Prototyping: The 3-lane SIPO interface enables real-time instruction injection via external microcontrollers like Arduino.

* Basic DSP: Performs bit manipulation and fixed-point arithmetic for sensor data processing using shift and logic operations.
