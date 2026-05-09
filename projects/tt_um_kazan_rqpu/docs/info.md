<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

RQPU v2 is a reversible-computing-inspired 4-bit processor for Tiny Tapeout.

It runs a deterministic 4-phase loop:

- phase 00: latch instruction word (`class`, `mode`, `func`)
- phase 01: latch operand/data word (`A`, `B`)
- phase 10: execute and commit architectural state
- phase 11: expose valid output nibble and flags

The core includes:

- arithmetic/logic/shift/compare instruction families
- memory and mapped-register access family
- system register move/clear/immediate helpers
- reversible/checkpoint operations including save and reverse
- 4x4 on-chip scratchpad RAM (`RAM[0:3]`)
- memory-mapped internal registers (`ACC`, `BREG`, `SHD`, `FLAGS`, `MAR`, `MDR`, `OUT`, `TMP0`, `TMP1`, `EXT0`, `EXT1`, and previous-state mirrors)

The reversible behavior uses compact checkpoint metadata so `REVERSE` performs a single-step undo of recent architectural changes.


The easiest way to understand the machine is to look at one host-issued operation.

### Example: load `ACC = 6`, then add `3`

#### Step 1 — write `6` into `ACC`

Issue a `CLS_SYS` / `LOADIMM` operation with:

- class = `CLS_SYS`
- mode = `0`
- func = `0x0`
- `A = SYS_ACC`
- `B = 0x6`

After `P3_OUTPUT`, `out_q = 6`, `ACC = 6`, and `Z = 0`.

#### Step 2 — add immediate `3`

Issue a `CLS_ALU` / `ADD` with:

- class = `CLS_ALU`
- mode = `0`
- func = `0x0`
- `A = 0x0` (unused in immediate mode)
- `B = 0x3`

After `P3_OUTPUT`, the core presents:

- `out_q = 9`
- `ACC = 9`
- `Z = 0`
- `C = 0`

### Example: reversible-style undo

If you:

1. load `ACC = 4`
2. load `BREG = A`
3. execute `CLS_REV` `ACC <-> BREG`

then `ACC` becomes `A` and `BREG` becomes `4`, and the operation snapshots the old state first.

If you then issue `CLS_REV` `REVERSE`, the machine swaps current and previous snapshots, restoring `ACC = 4`.

That is exactly the behavior the supplied testbench checks.

---

## How to test

The public bus contract is:

- `uo_out[7:6] = phase[1:0]`
- `uo_out[5:2] = result/data nibble`
- `uo_out[1]   = Z`
- `uo_out[0]   = C`

Input protocol:

- phase 00: `ui_in[7:5]=class`, `ui_in[4]=mode`, `ui_in[3:0]=func`
- phase 01: `ui_in[7:4]=A`, `ui_in[3:0]=B`

In cocotb:

1. Wait for phase 00 and drive instruction.
2. Wait for phase 01 and drive operand/data.
3. Wait for phase 11 and sample result/flags.
4. Repeat for arithmetic, RAM/mapped-register access, and reverse scenarios.

Current tests are under `test/test.py` and verify:

- phase progression and reset behavior
- ALU and reverse behavior
- RAM write/read and mapped register write/read
- reverse after RAM mutation

## External hardware

No external hardware is required. For live demos, a small MCU/FPGA controller can drive phase-aware transactions on `ui_in` and sample `uo_out` at phase 11.
