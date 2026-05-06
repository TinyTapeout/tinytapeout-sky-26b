<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a compact 8-bit teaching CPU with a 4-register file.
It is configured for 2 Tiny Tapeout tiles (`1x2`).

Architecture:
- 2-phase control FSM (fetch and execute)
- 4 general 8-bit registers (`r0` to `r3`), with `r0` hardwired to zero
- 5-bit program counter (PC)
- 8-bit instruction register (IR)
- 24x8 data RAM
- 8-bit ALU for add, sub, logic, shift, and simple register moves

Instruction format uses `ui_in[7:4]` as opcode and `ui_in[3:0]` as operand.
For register-format instructions, `operand[3:2]` is `rd` and `operand[1:0]` is `rs`.

Supported opcodes:
- `0x0`: LDI (`rd = immediate[1:0]`)
- `0x1`: ADD (`rd = rd + rs`)
- `0x2`: SUB (`rd = rd - rs`)
- `0x3`: STO (`RAM[rs] = rd`)
- `0x4`: LDM (`rd = RAM[rs]`)
- `0x5`: JMPZ (if zero flag is set, `PC = PC + sign_extend(operand[3:0])`)
- `0x6`: AND (`rd = rd & rs`)
- `0x7`: OR (`rd = rd | rs`)
- `0x8`: XOR (`rd = rd ^ rs`)
- `0x9`: SHL (`rd = rd << rs[2:0]`)
- `0xA`: SHR (`rd = rd >> rs[2:0]`)
- `0xB`: JMPNZ (if zero flag is clear, `PC = PC + sign_extend(operand[3:0])`)
- `0xC`: MOV (`rd = rs`)
- `0xD`: INC (`rd = rd + 1`)
- `0xE`: DEC (`rd = rd - 1`)
- `0xF`: NOP

Outputs:
- `uo_out[7:0]` = current destination register (`rd`) value from the register file
- `uio_out[6]` = latched carry flag from the last register write
- `uio_out[5]` = zero flag
- `uio_out[4:0]` = PC debug (`PC[4:0]`)
- `uio_out[7]` = fetch phase flag

All logic is synchronous to `clk` and gated by `ena`. Reset (`rst_n`) initializes registers, PC, IR, control state, and RAM.

Instruction bytes are supplied externally on `ui_in`; there is no on-chip program ROM in the current build.

## How to test

Run top-level CPU tests:

```sh
cd test
pip install -r requirements.txt
make -B
```

Run per-module unit tests:

```sh
cd test/unit
make -B DUT=alu
make -B DUT=control_fsm
make -B DUT=registers
make -B DUT=memory
make -B DUT=control_unit
make -B DUT=datapath
```

For waveform inspection, open `tb.fst` with GTKWave or Surfer.

## External hardware

You may need to add an external memory to store instructions and feed it to cpu through `ui_in`, and use 5bit PC as an address.
