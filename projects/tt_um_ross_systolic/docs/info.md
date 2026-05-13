# 2×2 Signed Systolic Array Matrix Multiplier

## Overview

This project implements a **2×2 systolic array** that computes **C = A × B**, where A and B are 2×2 matrices with **signed 4-bit elements** (-8 to +7). Each result element is a **9-bit signed accumulator**. The output port `uo_out` provides the **lower 8 bits** in two's complement format. The **9th bit (sign)** and **overflow flag** are exposed on bidirectional pins so the full 9-bit value can be reconstructed.

- **4 PEs** in a 2×2 grid, each with a signed 4×4 multiplier + 9-bit signed accumulator
- **Skewed input feeding** via a 4-cycle counter
- **Byte-serial loading**: 4 bytes (2 for A + 2 for B), then pulse `start`
- **Serial output**: 4 results streamed over 4 clock cycles
- **Manual step mode**: pulse `manual_clk` to advance one cycle at a time for human-visible demos
- **Overflow detection**: `overflow_8bit` pin indicates when the 9-bit value doesn't fit in 8-bit output
- **9th bit access**: `acc_sign` pin provides the sign bit of the currently-serialized result

---

## Pinout (All 24 Pins Used)

The Tiny Tapeout chip provides exactly 24 user pins: 8 dedicated inputs, 8 dedicated outputs, and 8 bidirectional. **Every single pin is used.**

| Pin Group | Bit | Direction | Name | Function |
|-----------|-----|-----------|------|----------|
| `ui_in` | [7:0] | **Input** | `data_byte` | 8-bit matrix data to load |
| `uo_out` | [7:0] | **Output** | `result_data` | 8-bit two's complement result (lower 8 bits of 9-bit accumulator) |
| `uio` | [0] | **Input** | `wren` | Write enable — loads `ui_in` into next matrix byte |
| `uio` | [1] | **Input** | `start` | Begin computation (gated by `!busy && ena`) |
| `uio` | [2] | **Output** | `busy_core` | Systolic array is actively computing |
| `uio` | [3] | **Output** | `out_valid` | `uo_out` contains valid result data |
| `uio` | [4] | **Output** | `overflow_8bit` | `acc[8] ^ acc[7]` for **current** result (1 = truncated) |
| `uio` | [5] | **Input** | `manual_clk` | Rising edge advances one step when `step_mode=1` |
| `uio` | [6] | **Input** | `step_mode` | 1 = manual step mode, 0 = free-running |
| `uio` | [7] | **Output** | `acc_sign` | `acc[8]` sign bit for **current** result (9th bit) |

`uio_oe = 0x9C` (bits 7,4,3,2 = output; bits 6,5,1,0 = input)

**{`acc_sign`, `uo_out[7:0]`} reconstructs the full 9-bit signed value.**

---

## How It Works

### Processing Element (PE)

Each PE performs one MAC per active clock cycle:

```
acc = clear ? (a_in × b_in) : acc + (a_in × b_in)
```

`a_in` propagates **right** to the next column PE; `b_in` propagates **down** to the next row PE. Each PE contains a signed 4×4 multiplier producing an 8-bit signed product.

### 2×2 PE Grid

The controller uses a 4-cycle counter (t = 0 … 3) with skewed feeding:

| t | feed_a0 | feed_a1 | feed_b0 | feed_b1 | Action |
|---|---------|---------|---------|---------|--------|
| 0 | a00     | —       | b00     | —       | PE00: clear & accumulate |
| 1 | a01     | a10     | b10     | b01     | All PEs accumulating |
| 2 | —       | a11     | —       | b11     | All PEs accumulating |
| 3 | —       | —       | —       | —       | `done` pulse asserted |

PE(i,j) receives its first useful operands at t = i + j and accumulates for 2 cycles.
All accumulators are stable by t = 3.

### Data Packing

Two signed 4-bit elements fit perfectly in one byte:

| Byte | Contents | Elements |
|------|----------|----------|
| 0 | `{a01[3:0], a00[3:0]}` | A row 0 |
| 1 | `{a11[3:0], a10[3:0]}` | A row 1 |
| 2 | `{b01[3:0], b00[3:0]}` | B row 0 |
| 3 | `{b11[3:0], b10[3:0]}` | B row 1 |

Signed values use two's complement within their 4-bit field. Example: `-8` = `0x8`, `+7` = `0x7`.

---

## Operation Protocols

### Free-Running Mode (`step_mode = 0`)

```
Step 0:  Reset — hold rst_n LOW for ≥4 cycles, then release.

Step 1:  Load matrix A (2 bytes)
         ui_in = byte0, uio_in = 0x01 (wren=1)
         @(posedge clk);
         ui_in = byte1, uio_in = 0x01 (wren=1)
         @(posedge clk);

Step 2:  Load matrix B (2 bytes)
         ui_in = byte2, uio_in = 0x01 (wren=1)
         @(posedge clk);
         ui_in = byte3, uio_in = 0x01 (wren=1)
         @(posedge clk);
         uio_in = 0x00;  // de-assert wren

Step 3:  Start computation
         uio_in = 0x02 (start=1), ena=1
         @(posedge clk);
         uio_in = 0x00;  // de-assert start

Step 4:  Wait ~6 cycles for computation + serialization

Step 5:  Read 4 results (one per cycle, when out_valid=1):
         C00 = uo_out (cycle 0 of stream)
         C01 = uo_out (cycle 1)
         C10 = uo_out (cycle 2)
         C11 = uo_out (cycle 3)
         
         On each cycle, read:
           full_9bit = {acc_sign, uo_out[7:0]}
           overflow_8bit = uio_out[4]
```

### Manual Step Mode (`step_mode = 1`)

In manual step mode, **every** state change requires a rising edge on `manual_clk` (uio_in[5]). The system clock (`clk`) can run at any speed — only `manual_clk` edges advance the logic.

**Example: A × B with manual stepping**

Matrices:
```
A = |  3   2 |      B = |  5  -2 |
    | -1   4 |          |  3   1 |
```

Expected: C00=21, C01=-4 (0xFC), C10=7, C11=6

| Step | Action | `ui_in` | `uio_in` | `uo_out` | `uio_out` | Notes |
|------|--------|---------|----------|----------|-----------|-------|
| 0 | Reset | `0x00` | `0x00` | `0x00` | `0x00` | Hold `rst_n=0` for 4+ clocks |
| 1 | Load byte 0 | `0x23` | `0x41` | — | `0x00` | `step_mode=1`, `wren=1`, pulse `manual_clk` |
| 2 | Load byte 1 | `0x4F` | `0x41` | — | `0x00` | `a10=-1`, `a11=4` → `0x4F` |
| 3 | Load byte 2 | `0x5D` | `0x41` | — | `0x00` | `b00=5`, `b01=-2` → `0x5D` |
| 4 | Load byte 3 | `0x31` | `0x41` | — | `0x00` | `b10=3`, `b11=1` → `0x31` |
| 5 | Start | `0xXX` | `0x42` | — | `0x04` | `start=1`, pulse `manual_clk` → `busy_core=1` |
| 6 | Compute | `0xXX` | `0x40` | — | `0x04` | PEs accumulate, `busy_core=1` |
| 7 | Compute | `0xXX` | `0x40` | — | `0x04` | `busy_core=1` |
| 8 | Compute | `0xXX` | `0x40` | — | `0x04` | `busy_core=1` |
| 9 | Done | `0xXX` | `0x40` | — | `0x0C` | `busy_core=1`, `out_valid=1` |
| 10 | Read C00 | `0xXX` | `0x40` | `0x15` (21) | `0x0C` | `overflow=0`, `sign=0` |
| 11 | Read C01 | `0xXX` | `0x40` | `0xFC` (-4) | `0x3C` | `overflow=0`, `sign=1` |
| 12 | Read C10 | `0xXX` | `0x40` | `0x07` (7) | `0x0C` | `overflow=0`, `sign=0` |
| 13 | Read C11 | `0xXX` | `0x40` | `0x06` (6) | `0x0C` | `overflow=0`, `sign=0` |
| 14 | Idle | `0x00` | `0x00` | `0x00` | `0x00` | All outputs return to 0 |

**To pulse `manual_clk`:**
1. Set `uio_in[5] = 1` (manual_clk HIGH)
2. Wait for rising edge of `clk`
3. Set `uio_in[5] = 0` (manual_clk LOW)
4. Wait for next rising edge of `clk`

This gives one step pulse per toggle.

### Reconstructing the Full 9-Bit Value

On every output cycle where `out_valid=1`:

```python
full_9bit = (acc_sign << 8) | uo_out
```

| Result | `acc_sign` | `uo_out` | Full 9-bit | Decimal |
|--------|-----------|----------|-----------|---------|
| C00 | 0 | `0x15` | `0x015` | **+21** |
| C01 | 1 | `0xFC` | `0x1FC` | **-4** |
| C10 | 0 | `0x07` | `0x007` | **+7** |
| C11 | 0 | `0x06` | `0x006` | **+6** |

### Overflow Detection

`overflow_8bit = acc[8] ^ acc[7]`

| True Value | 9-bit binary | `acc[8]` | `acc[7]` | `overflow_8bit` |
|------------|-----------|---------|---------|-------------------|
| +21 | `0_0001_0101` | 0 | 0 | **0** (fits) |
| -4 | `1_1111_1100` | 1 | 1 | **0** (fits) |
| +128 | `0_1000_0000` | 0 | 1 | **1** (overflow!) |
| -200 | `1_0011_1000` | 1 | 0 | **1** (overflow!) |

If `overflow_8bit=1`, the 8-bit `uo_out` alone is **wrong** — you must use the full 9-bit value from `{acc_sign, uo_out}`.

---

## How to Test

### Quick sanity checks

| Test | Bytes to load (hex) | Expected C (decimal) |
|------|---------------------|-------------------|
| Identity | `01 10 01 10` | C00=1, C01=0, C10=0, C11=1 |
| All-ones | `11 11 11 11` | all elements = 2 |
| Max positive | `77 77 77 77` | all elements = 98 |
| All negative | `88 88 88 88` | all elements = 128 (9-bit: +128, overflow!) |
| Overflow | `80 00 80 00` | C00=128 (overflows 8-bit signed) |

### iverilog (command line)

Runs 18 self-checking test cases:

```bash
cd TT_Systolic_
iverilog -g2012 -Wall -o sim.out \
  test/tb_vivado.v \
  src/project.v \
  src/systolic_2x2.v \
  src/systolic_pe.v \
  src/mult_4x4.v
vvp sim.out
```

### Vivado

1. Add `src/mult_4x4.v`, `src/systolic_pe.v`, `src/systolic_2x2.v`, `src/project.v`
2. Add `test/tb_vivado.v` as simulation top
3. Run Behavioral Simulation, then in Tcl console: `run 5000ns`

### cocotb

Runs 16 Python test cases:

```bash
cd TT_Systolic_/test
pip install -r requirements.txt
python run_tests.py
```

Results are checked in `test/sim_build/results.xml`.
