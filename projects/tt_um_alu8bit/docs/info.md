# TinyTapeout 8-bit ALU

## How it works

This project implements a simple **8-bit Arithmetic Logic Unit (ALU)**.
The ALU supports arithmetic, logical, and shift operations on two 8-bit operands.

The design contains two internal registers:

* **Register A**
* **Register B**

Operands are loaded into these registers through the `ui[7:0]` data bus.

Control signals are provided through the bidirectional pins (`uio`).
These signals determine when operands are loaded and which operation is executed.

### Operation Flow

1. Load operand **A** from `ui[7:0]` using the `LOAD_A` control signal.
2. Load operand **B** from `ui[7:0]` using the `LOAD_B` control signal.
3. Select an ALU operation using the **opcode**.
4. Trigger computation using the `EXECUTE` signal.
5. The result appears on `uo[7:0]`.

### Supported Operations

| Opcode | Operation        |
| ------ | ---------------- |
| 000    | ADD (A + B)      |
| 001    | SUB (A − B)      |
| 010    | AND              |
| 011    | OR               |
| 100    | XOR              |
| 101    | SHIFT LEFT       |
| 110    | SHIFT RIGHT      |
| 111    | COMPARE (A == B) |

### Status Flags

Two status flags are provided:

* **ZERO flag** (`uio[6]`) – set when the result is zero
* **CARRY flag** (`uio[7]`) – set when arithmetic generates a carry

---

## Pin Mapping

### Inputs

| Pin     | Description          |
| ------- | -------------------- |
| ui[7:0] | 8-bit data input bus |

### Control Signals (uio inputs)

| Pin    | Function     |
| ------ | ------------ |
| uio[0] | LOAD_A       |
| uio[1] | LOAD_B       |
| uio[2] | EXECUTE      |
| uio[3] | OPCODE bit 0 |
| uio[4] | OPCODE bit 1 |
| uio[5] | OPCODE bit 2 |

### Outputs

| Pin     | Description |
| ------- | ----------- |
| uo[7:0] | ALU result  |

### Flag Outputs

| Pin    | Description |
| ------ | ----------- |
| uio[6] | ZERO flag   |
| uio[7] | CARRY flag  |

---

## How to test

Example: perform `7 + 5`

1. Set `ui = 7`
2. Set `LOAD_A = 1`
3. Set `ui = 5`
4. Set `LOAD_B = 1`
5. Set opcode `000` (ADD)
6. Set `EXECUTE = 1`

The output `uo[7:0]` should show:

```
12
```

The **ZERO flag** will be `0` and the **CARRY flag** will be `0`.

---

## External hardware

No external hardware is required.

The design can be tested using:

* TinyTapeout demo board
* GPIO switches for operand inputs
* LEDs for observing the result output
