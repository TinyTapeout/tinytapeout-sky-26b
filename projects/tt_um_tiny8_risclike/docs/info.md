# Tiny8 CPU with SPI Program Load and Internal Execution

## 1. Overview

This project implements a compact 8-bit CPU in Verilog.

Instead of relying on a fixed hardcoded program, the processor receives a short instruction sequence through SPI, stores it into an internal program memory, and then executes that sequence autonomously.

The design is intended for Tiny Tapeout and aims to balance:

- programmability
- compact area
- simple external interfacing
- autonomous execution after loading

The final architecture uses:

- an 8-bit accumulator register (`ACC`)
- one auxiliary 8-bit register (`R1`)
- a 10-slot internal instruction memory
- SPI-based program loading
- a compact instruction set with arithmetic, logic, branch, and output operations

## 2. Main operating concept

The system works in two clearly separated phases.

### 2.1 Program loading phase

When `RUN = 0`, an external controller sends 24-bit SPI frames to the chip.

Each frame contains:

- an instruction address
- one 16-bit instruction word

The chip stores those instructions into its internal program memory.

### 2.2 Execution phase

When `RUN = 1`, the CPU starts executing from address `0` and runs autonomously from its internal instruction memory.

This means the chip itself does **not** parse files or access a filesystem.  
A file such as a `.hex` program exists outside the ASIC, and an external controller converts that file into SPI frames and sends them into the chip.

## 3. RTL architecture

The project is organized into the following RTL blocks.

### `alu8.v`

8-bit arithmetic and logic unit used by the CPU.

It provides the datapath for arithmetic and logic instructions.

### `tiny8_cpu.v`

CPU core responsible for:

- program counter sequencing
- instruction fetch
- instruction decode
- ALU operation selection
- zero flag update
- branch control
- output register update
- halt state handling

### `tiny8_prgmem.v`

Internal instruction memory.

The final implementation uses **10 valid instruction slots**.

Valid addresses are:

- `0`
- `1`
- `2`
- `3`
- `4`
- `5`
- `6`
- `7`
- `8`
- `9`

### `tiny8_spi_loader.v`

SPI loader that receives 24-bit frames and converts them into:

- write enable
- write address
- write data

for the internal program memory.

### `tt_um_tiny8_risclike.v`

Top-level wrapper used for external integration.

It connects:

- SPI loader
- program memory
- CPU
- visible output signals
- Tiny Tapeout external pins

## 4. Internal program memory model

The internal program memory stores:

- **10 instruction words**
- each instruction word is **16 bits wide**

### 4.1 Valid address range

Only addresses `0..9` are valid.

### 4.2 Behavior outside valid range

If the CPU reads an address outside the valid range, the memory returns:

- `16'hD000`

which corresponds to:

- `HALT`

This prevents undefined execution if an invalid branch target is reached.

## 5. CPU register model

The CPU uses a very small internal state.

### `ACC`

Main accumulator register.

This is the primary working register of the CPU.  
Most arithmetic and logic operations write their result back into `ACC`.

### `R1`

Auxiliary register.

This is typically used as the second operand for ALU operations.

### `Z`

Zero flag.

This flag is updated when the CPU needs to know whether a result is zero.  
It is used by conditional branches such as `BZ` and `BNZ`.

### `port_out`

Visible output register.

This is the value that appears externally on `uo[7:0]`.

### `PC`

Program counter.

This selects the current instruction address.

## 6. What `ACC` means

`ACC` stands for **accumulator**.

An accumulator is a register used to hold the current working result of the processor.

In simple CPUs, instead of having many general-purpose registers, one register is treated as the main operand/result register.

In this project:

- immediate values can be loaded into `ACC`
- ALU operations use `ACC` and `R1`
- the result usually goes back into `ACC`
- `OUT` sends `ACC` to the visible output

A simple way to think about it is:

- `ACC` = the main working register
- `R1` = helper register

Example:

1. load `5` into `ACC`
2. load `3` into `R1`
3. execute `ADD`
4. now `ACC = 8`

So the accumulator is where the CPU keeps the main result it is currently working on.

## 7. CPU execution behavior

### 7.1 Reset behavior

After reset:

- `ACC = 0`
- `R1 = 0`
- `port_out = 0`
- `PC = 0`
- `halted = 0`

### 7.2 Sequential execution

The CPU fetches an instruction from the current address and executes it.

### 7.3 Program counter wrap

If execution advances sequentially past address `9`, it wraps back to address `0`.

### 7.4 Branch behavior

Branch instructions use the low address bits of the instruction.

If the requested branch address is invalid, execution is redirected to address `0`.

### 7.5 Halt behavior

When `HALT` is executed:

- `halted` becomes `1`
- execution stops
- the CPU stays halted until the system is reset or until the external operating flow restarts execution

### 7.6 RUN behavior

When `RUN = 0`, the design is in program load mode.  
When `RUN = 1`, the design is in execution mode.

This separation is important:

- `RUN = 0` → load instructions
- `RUN = 1` → execute program

## 8. Instruction set summary

The opcode is stored in:

- `instr[15:12]`

The ISA includes:

### Data and register instructions

- `NOP`
- `LDI_ACC`
- `LDI_R1`
- `MOV_ACC_R1`

### Arithmetic and logic instructions

- `ADD`
- `SUB`
- `AND`
- `OR`
- `XOR`
- `CMP`

### Output and control instructions

- `OUT`
- `OUT_R1`
- `JMP`
- `BZ`
- `BNZ`
- `HALT`

## 9. Detailed instruction behavior

### `NOP`

**Opcode:** `0x0`  
**Encoding:** `0x0000`

No operation is performed.  
The CPU simply advances to the next instruction.

Useful for:

- padding
- timing alignment
- placeholder instructions

### `LDI_ACC`

**Opcode:** `0x1`  
**Encoding:** `0x1xxx`

Loads an 8-bit immediate value into `ACC`.

Effect:

- `ACC <- imm8`

Also updates `Z` if the loaded value is zero.

Example:

- `0x102A` → `ACC = 0x2A`

### `LDI_R1`

**Opcode:** `0x2`  
**Encoding:** `0x2xxx`

Loads an 8-bit immediate value into `R1`.

Effect:

- `R1 <- imm8`

Example:

- `0x2033` → `R1 = 0x33`

### `ADD`

**Opcode:** `0x3`  
**Encoding:** `0x3000`

Adds `R1` to `ACC`.

Effect:

- `ACC <- ACC + R1`

Also updates `Z` based on the result.

### `SUB`

**Opcode:** `0x4`  
**Encoding:** `0x4000`

Subtracts `R1` from `ACC`.

Effect:

- `ACC <- ACC - R1`

Also updates `Z`.

### `AND`

**Opcode:** `0x5`  
**Encoding:** `0x5000`

Bitwise AND between `ACC` and `R1`.

Effect:

- `ACC <- ACC & R1`

Useful for:

- masking
- bit filtering

### `OR`

**Opcode:** `0x6`  
**Encoding:** `0x6000`

Bitwise OR between `ACC` and `R1`.

Effect:

- `ACC <- ACC | R1`

Useful for:

- forcing bits
- combining masks

### `XOR`

**Opcode:** `0x7`  
**Encoding:** `0x7000`

Bitwise XOR between `ACC` and `R1`.

Effect:

- `ACC <- ACC ^ R1`

Useful for:

- toggling bits
- simple comparisons
- bitwise transformations

### `CMP`

**Opcode:** `0x8`  
**Encoding:** `0x8000`

Comparison through the subtraction path.

This instruction does **not** store the subtraction result into `ACC`.  
Instead, it uses the subtraction result internally to update `Z`.

In practice, it is useful to test whether:

- `ACC == R1`

If `ACC - R1 == 0`, then:

- `Z = 1`

Otherwise:

- `Z = 0`

This instruction is mainly intended to support:

- `BZ`
- `BNZ`

### `OUT`

**Opcode:** `0x9`  
**Encoding:** `0x9000`

Copies `ACC` into the visible output register.

Effect:

- `port_out <- ACC`

Externally this appears on:

- `uo[7:0]`

### `JMP`

**Opcode:** `0xA`  
**Encoding:** `0xA00a`

Unconditional jump.

Effect:

- `PC <- a`

If the target address is invalid, execution is redirected to address `0`.

### `BZ`

**Opcode:** `0xB`  
**Encoding:** `0xB00a`

Branch if zero.

Effect:

- if `Z = 1`, jump to address `a`
- otherwise continue sequentially

Useful after:

- `CMP`
- arithmetic operations that may produce zero

### `BNZ`

**Opcode:** `0xC`  
**Encoding:** `0xC00a`

Branch if not zero.

Effect:

- if `Z = 0`, jump to address `a`
- otherwise continue sequentially

### `HALT`

**Opcode:** `0xD`  
**Encoding:** `0xD000`

Stops execution.

Effect:

- `halted = 1`
- CPU enters halt state

Externally, halt status is visible.

### `MOV_ACC_R1`

**Opcode:** `0xE`  
**Encoding:** `0xE000`

Copies `R1` into `ACC`.

Effect:

- `ACC <- R1`

Also updates `Z` depending on the value copied.

Useful for:

- moving a loaded constant in `R1` into the main working register
- preparing output or arithmetic without needing another immediate load into `ACC`

### `OUT_R1`

**Opcode:** `0xF`  
**Encoding:** `0xF000`

Copies `R1` directly into the visible output register.

Effect:

- `port_out <- R1`

Useful when:

- `R1` already contains the value you want to show
- you want to output without first copying into `ACC`

## 10. SPI loading protocol

Instructions are loaded using **24-bit SPI frames**.

### 10.1 Frame format

- bits `[23:16]` = address byte
- bits `[15:0]`  = instruction word

### 10.2 Write enable condition

Program writes are accepted only when:

- `RUN = 0`

When `RUN = 1`, execution mode is active and memory writes are blocked.

### 10.3 Practical meaning

The CPU does not load a `.hex` file directly.

Instead:

1. an external controller reads the file
2. converts each line into a 24-bit frame
3. sends the frames through SPI into the chip

## 11. Practical operating sequence

### Step 1: Reset

Reset the design.

This initializes:

- CPU state
- output register
- status flags
- memory contents

### Step 2: Disable execution

Set:

- `RUN = 0`

### Step 3: Load instructions

Send one SPI frame per instruction.

### Step 4: Check load status

Observe:

- `PROGRAM_LOADED`

### Step 5: Start execution

Set:

- `RUN = 1`

The CPU begins execution from address `0`.

### Step 6: Observe results

Monitor:

- `uo[7:0]`
- `HALTED`
- `RUN_ECHO`

## 12. Pin mapping

### Inputs

- `ui[0]` = `RUN`

### Main outputs

- `uo[7:0]` = CPU output port

### UIO usage

- `uio[0]` = `SPI_SCK` input
- `uio[1]` = `SPI_CS_N` input
- `uio[2]` = `SPI_MOSI` input
- `uio[3]` = `PROGRAM_LOADED` output
- `uio[4]` = `HALTED` output
- `uio[5]` = `RUN_ECHO` output
- `uio[6]` = unused
- `uio[7]` = unused

## 13. Example program

Example:

| Address | Instruction | Meaning |
|--------:|-------------|---------|
| 0 | `0x2033` | `LDI_R1 0x33` |
| 1 | `0xE000` | `MOV_ACC_R1` |
| 2 | `0x9000` | `OUT` |
| 3 | `0xF000` | `OUT_R1` |
| 4 | `0xD000` | `HALT` |

### Expected behavior

- `R1 = 0x33`
- `ACC = 0x33`
- visible output becomes `0x33`
- visible output is written again from `R1`
- CPU halts

## 14. Example SPI frames

For the example above, the SPI frames are:

| Address | Instruction | 24-bit frame |
|--------:|-------------|--------------|
| 0 | `0x2033` | `0x002033` |
| 1 | `0xE000` | `0x01E000` |
| 2 | `0x9000` | `0x029000` |
| 3 | `0xF000` | `0x03F000` |
| 4 | `0xD000` | `0x04D000` |

## 15. How it works physically in real life

### 15.1 What is actually loaded

The chip does **not** open or parse files.

A file such as `.hex` is stored externally, for example in:

- a PC
- a microcontroller
- an RP2040 on the demo board
- another controller

That controller converts the file into SPI frames and sends them into the ASIC.

So the ASIC receives:

- addresses
- instruction words

not files directly.

### 15.2 External controller role

In a physical setup, the external controller acts as:

- SPI master
- program source
- clock source or clock controller
- run/control source

The ASIC acts as:

- SPI target
- internal program memory target
- autonomous execution engine

### 15.3 Demo board usage model

A practical demo-board flow is:

1. power the board
2. select the project
3. keep `RUN = 0`
4. send SPI frames
5. wait for `PROGRAM_LOADED`
6. provide execution clock
7. set `RUN = 1`
8. observe `uo[7:0]`, `HALTED`, and `RUN_ECHO`

## 16. Human-visible use

### 16.1 Important practical limitation

If the CPU runs too fast, a person will not be able to observe intermediate states directly.

At high frequency, execution may complete before a human can visually follow the output transitions.

### 16.2 Recommended human-visible approaches

#### Slow clock mode

Use a slow external clock so changes can be seen by eye.

#### Step clock mode

Advance execution one clock pulse at a time.

#### Final-result mode

Run normally, then only show:

- final output value
- halt status

### 16.3 What a human can observe

A human can easily observe:

- whether `PROGRAM_LOADED` becomes active
- whether `RUN_ECHO` reflects execution state
- whether `HALTED` becomes active
- the final value on `uo[7:0]`

If a human must observe intermediate instruction results, then the external controller should provide:

- a slow clock
- or step-by-step clocking

## 17. Real-world file loading example

Suppose the external program file contains:

```text
00 2033
01 E000
02 9000
03 F000
04 D000
```

The controller converts that into these frames:

- `0x002033`
- `0x01E000`
- `0x029000`
- `0x03F000`
- `0x04D000`

Then:

1. `RUN = 0`
2. send all frames through SPI
3. wait until `PROGRAM_LOADED = 1`
4. set `RUN = 1`
5. observe output and halt state

## 18. What this architecture is good for

This architecture is good for:

- compact programmable execution
- external program loading
- simple visible output behavior
- small instruction-driven demonstrations
- low-area Tiny Tapeout implementation

It is not intended for:

- large programs
- general-purpose software execution
- direct file parsing on-chip
- deep data memory structures
- complex multi-register software environments

## 19. Validation intent

The validation strategy is intended to cover:

- SPI program loading
- correct memory writes
- autonomous execution
- output correctness
- halt signaling
- simulation-level functional verification
- gate-level compatibility

## 20. Project intent

This project extends a simple ALU-style concept into a compact programmable system.

Instead of manually forcing each operation from outside, the ALU is controlled by a small CPU that:

- receives a short program
- stores it internally
- executes it autonomously

This makes the design more representative of a real programmable digital block while still remaining compact enough for Tiny Tapeout.
