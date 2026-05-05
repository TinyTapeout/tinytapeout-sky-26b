<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is a **3×3 unsigned 4-bit matrix multiplier**. It computes
`C = A · B` where `A` and `B` are 3×3 matrices of 4-bit unsigned
integers (values 0–15). Each element of `C` is the sum of three 8-bit
products, so the result is 10 bits wide and cannot overflow:
`3 · 15 · 15 = 675 < 2^10`.

Because the chip only has 24 user I/O bits, the matrices cannot be
loaded in parallel. Instead the design exposes a simple **nibble-stream
protocol** driven by a small finite-state machine:

```
S_LOAD_A → S_LOAD_B → S_WAIT → ┌── S_COMPUTE ── S_READ ──┐ ...  → S_DONE
                               └─────────────  9× ────────┘
```

* **S_LOAD_A / S_LOAD_B:** every rising edge of `LOAD_EN` latches the
  nibble on `DATA_IN[3:0]` into the next slot of the on-chip A or B
  memory (row-major, 9 nibbles each).
* **S_COMPUTE:** when `START` rises after both matrices are loaded, the
  multiplier accumulates one 4×4 product per clock for three cycles,
  producing a 10-bit element of `C`.
* **S_READ:** `OUT_VALID` is asserted; the user reads two bytes of the
  result by pulsing `READ_EN`. Byte 0 contains bits `[9:8]`, byte 1
  contains bits `[7:0]`. After the second pulse the FSM automatically
  advances to the next `(i, j)` and computes again.
* **S_DONE:** after the 9th element has been read, `DONE` is asserted
  and stays high until reset.

Status pins (`BUSY`, `DONE`, `OUT_VALID`) are exposed on the
bidirectional bus so a host MCU can poll progress without bit-banging.

Reset (`rst_n` low) clears all state and returns to `S_LOAD_A`.

## How to test

The host (MCU, FPGA, USB-GPIO, etc.) drives the chip in this order:

1. Hold `rst_n` low for a few clocks, then release.
2. **Load A:** for each of the 9 elements (row-major) put the nibble on
   `ui_in[3:0]`, pulse `LOAD_EN` high for one clock, low for one clock.
3. **Load B:** same as A; the FSM auto-switches after the 9th nibble.
4. **Start:** pulse `START` high for one clock. `BUSY` stays high.
5. **Read 9 results:** for each element, wait for `OUT_VALID = 1`,
   then read two bytes on `uo_out[7:0]`, pulsing `READ_EN` between
   bytes. The FSM transparently computes the next element while reading.
6. After the 18th byte, `DONE` goes high.

Sanity-check vectors:
* `A = I_3`, any `B` → `C == B`.
* `A = B = [[15]*3]*3` → every `C[i][j] = 675` (`0x02A3`, byte0=`0x02`, byte1=`0xA3`).

The cocotb testbench in `test/test.py` covers identity, a small
hand-computed case, the maximum-value case, and a randomized case.

## External hardware

None. A microcontroller, FPGA, or USB-GPIO interface is enough to drive
the nibble-stream protocol. No buffers, level shifters, or analog parts
are required.
