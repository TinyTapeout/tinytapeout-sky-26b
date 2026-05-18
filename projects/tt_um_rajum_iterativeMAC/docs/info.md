<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design implements a **32-bit multiply-accumulate (MAC)** unit for tiny ML accelerators. A **7×8-bit multiplier** produces a 15-bit product every clock. A controller FSM shifts partial sums and aligns bias bytes across four training phases (or one phase in inference).

### Pin usage

| Signal | Role |
|--------|------|
| `ui_in[6:0]` | Activation (latched while `rst_n` is low) |
| `ui_in[7]` | Mode: `0` = inference, `1` = training |
| `ui_in[7:0]` | Weight byte (operand B) each active cycle |
| `uio_in[7:0]` | Bias byte (training); `uio` drives `result[23:16]` in inference |
| `uo_out[7:0]` | `result[31:24]` |

### Training FSM

`out_th` is set when any of `product[14:11]` are high (large partial product).

**Normal path (full cycle):**

```text
S0 capture product → S1 → S2 → S3 → S4 finalize → S1
```

**Early exit when `out_th` is set:**

| Current state | Next path |
|---------------|-----------|
| S1 | S5 → S6 → S7 → S1 |
| S2 | S6 → S7 → S1 |
| S3 | S7 → S1 |

States S5–S7 use the same bias alignment as S2–S4 but skip the remaining normal phases.

### Inference mode

`S0` captures the first product, then the FSM **holds in S1**. Each cycle accumulates `{0, product, bias, 0}` into `sum`, shifts `result` left by 8, and drives `uio_out`.

## How to test

From `test/`:

```bash
make clean && make
```

Cocotb tests in `test/test.py` compare the RTL against `test/mac_reference.py` for:

- Full training cycles (S1→S2→S3→S4→S1)
- All three early-exit paths
- Inference lockstep in S1
- tt07 regression vectors

## External hardware

No external hardware is required beyond the Tiny Tapeout carrier. A host MCU can stream weights and bias bytes on the GPIO pins.
