## Project Name
Tiny Out-of-Order CPU

---

## Project Description

This project implements a **minimal Out-of-Order (OoO) CPU** within the strict area constraints of TinyTapeout (~2000 standard cells).  

The goal is to demonstrate key microarchitectural concepts such as:
- Out-of-order execution
- Register renaming
- Instruction scheduling
- In-order commit

Despite its small size, the design includes the essential structures required for OoO execution.

---

## How it works

The CPU processes instructions through the following pipeline:

### 1. Instruction Fetch
- Instructions are provided through `io_in`
- Stored in an **Instruction Queue (8 entries)**

### 2. Decode & Issue
- Instructions at the head of the queue are decoded
- Issued only if:
  - Reorder Buffer (ROB) has space
  - Reservation Station (RS) has space

### 3. Register Renaming
- Performed using a **Register Alias Table (RAT)**
- Each instruction is assigned a ROB index
- Eliminates WAR and WAW dependencies

### 4. Reservation Station
- Instructions wait until operands are ready
- Two types:
  - ALU RS (2 entries)
  - Memory RS (1 entry)

### 5. Execution
- ALU operations: 2 cycles
- Memory operations: 4–5 cycles
- Execution starts as soon as operands are ready (OoO)

### 6. Writeback
- Results are written to the ROB
- Broadcast to waiting instructions

### 7. Commit
- Instructions commit **in program order**
- Results written to the Register File

---

## Key Features

- **Out-of-Order Execution**
  - Instructions execute when ready, not in program order

- **In-order Commit**
  - Ensures correct architectural state

- **Register Renaming**
  - Uses ROB index to remove false dependencies (WAR, WAW)

- **Dependency Handling**
  - Supports RAW, WAR, WAW hazards

---

## Inputs and Outputs

### Inputs
- `io_in[11:0]`: Encoded instruction input
  - [11:9] Opcode
  - [8:6] Destination register
  - [5:3] Source register 1
  - [2:0] Source register 2 / immediate

- `clk`: Clock signal
- `reset`: Reset signal

### Outputs
- `io_out`: Debug output (register values and execution state)

---

## Instruction Set

| Opcode | Operation |
|--------|----------|
| 000    | ADD      |
| 001    | SUB      |
| 010    | AND      |
| 011    | OR       |
| 100    | XOR      |
| 101    | LOAD     |
| 111    | HALT     |

---

## Hardware Configuration

- Instruction Queue: 8 entries  
- Register File: 8 registers  
- Reorder Buffer: 4 entries  
- ALU Reservation Station: 2 entries  
- Memory Reservation Station: 1 entry  
- Memory: 4 entries  

---

## How to test

A testbench feeds instructions into the CPU via `io_in`.


### Expected Behavior

- Instructions execute out-of-order based on operand readiness
- Dependencies are correctly handled:
  - RAW → waits for data
  - WAR/WAW → resolved via renaming
- Results commit in-order via ROB

### Output

Simulation prints:
- Clock cycle count
- Register index
- Register value

Example:
- 7 instructions complete in ~28 cycles

---

## External hardware

No external hardware is required.  
The design runs entirely within the TinyTapeout framework.

