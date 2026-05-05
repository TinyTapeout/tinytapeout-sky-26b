# 16-bit MIPS Single Cycle Processor

This project is a compact 16-bit MIPS-like single-cycle CPU for Tiny Tapeout. The design is intentionally small: it uses a 3-bit program counter, a 4-register file, a 2-word data memory, and a load/run interface on the Tiny Tapeout pins so instructions can be written into internal instruction memory at runtime.

## Overview

The top-level module, `tt_um_top_module_16_mips`, exposes a very small control interface. When `ui_in[7] = 0`, the design is in load mode and the instruction memory can be written one byte at a time through `uio_in[7:0]`. When `ui_in[7] = 1`, the CPU runs and executes one instruction per clock cycle.

In run mode, the lower 8 bits of the ALU result appear on `uo_out[7:0]` and the upper 8 bits appear on `uio_out[7:0]`. In load mode, `uo_out[7:0]` mirrors the input byte for easier bring-up, and `uio_oe[7:0]` is deasserted so the bidirectional pins behave as inputs.

## Main Features

- 16-bit datapath and 16-bit register values
- Single-cycle execution
- 4 x 16-bit register file
- 2-word 16-bit data memory
- 3-bit program counter with jump support
- Load/run instruction interface through Tiny Tapeout pins
- ALU result visible across `uo_out[7:0]` and `uio_out[7:0]`

## Pin Usage

- `ui_in[7]`: mode select, `0` = load, `1` = run
- `ui_in[6]`: byte select, `0` = low byte, `1` = high byte
- `ui_in[2:0]`: instruction address during load mode
- `uio_in[7:0]`: instruction byte during load mode
- `uo_out[7:0]`: lower 8 bits of ALU result in run mode, or the load-mode echo of `uio_in[7:0]`
- `uio_out[7:0]`: upper 8 bits of ALU result in run mode
- `uio_oe[7:0]`: output enable mask, `0x00` in load mode and `0xFF` in run mode

## Load Flow

To load one 16-bit instruction:

1. Drive `ui_in[7] = 0` to enter load mode.
2. Place the target instruction address on `ui_in[2:0]`.
3. Write the low byte of the instruction on `uio_in[7:0]` with `ui_in[6] = 0`.
4. Write the high byte of the instruction on `uio_in[7:0]` with `ui_in[6] = 1`.
5. Drive `ui_in[7] = 1` to enter run mode.

The instruction memory is written on the rising edge of `clk` whenever `ena = 1` and the design is in load mode.

## Instruction Format

The decoder uses the following bit layout:

- R-type: `opcode[15:12] | rs[11:10] | rt[9:8] | rd[7:6] | unused[5:0]`
- I-type: `opcode[15:12] | rs[11:10] | rt[9:8] | imm[7:0]`
- Jump: `opcode[15:12] | unused[11:3] | target[2:0]`

Supported opcodes:

- `0000`: add
- `0001`: sub
- `0010`: xor
- `0011`: or
- `0100`: lw
- `0101`: sw
- `0110`: addi
- `0111`: jump

## Execution Model

The CPU is single-cycle: each instruction is fetched, decoded, executed, and written back in one clock cycle. The program counter increments by 1 on each enabled rising edge unless a jump instruction redirects it.

The register file contains four architectural registers addressed by 2-bit register indices. Register `r0` is hard-wired to zero on reads and cannot be overwritten.

The ALU supports add, sub, or, and xor. For load and store instructions, the ALU computes the effective address using the base register plus a sign-extended 8-bit immediate.

## Testing

The repository includes both a Verilog behavioral testbench and a cocotb test. They both:

1. Load a small program into instruction memory.
2. Verify the loaded instruction words.
3. Switch to run mode.
4. Check the PC, ALU output, and register state cycle by cycle.

Run the tests from the `test/` directory with:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
make
```

## Notes

- The data memory in the current RTL is 2 words deep.
- The program counter is 3 bits wide, so execution wraps across 8 instruction addresses.
- `uio_out` is not a program-counter output; it carries the upper byte of the ALU result in run mode.

## Configuration Update

- Updated `src/config.json`: `PL_TARGET_DENSITY_PCT` was increased from `60` to `80`.
- This change is intended to help placement convergence when lower density targets cause global placement failures.