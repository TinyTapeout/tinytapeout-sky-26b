<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The Hénon map is a discrete-time dynamical system that exhibits chaotic behaviour.
It is defined by two coupled equations — `x = 1 - a·x² + y` and `y = b·x` —
which, under the classical parameters `a = 1.4` and `b = 0.3`, produce a bounded
strange attractor. This implementation computes the map in 10-bit signed fixed-point
(Q2.8) and serialises the resulting (x, y) samples as raw bit streams for off-chip readout.

The top module instantiates three sub-blocks:

- **Henon_map** — computes the two recurrences `x = 1 - a·x² + y` and `y = b·x` using fixed-point arithmetic with constants `a = 1.4` and `b =.3`. Asserts `done_henon` once the first valid sample is available.
- **ser_x** — receives the 10-bit `x[9:0]` output and serialises it as a raw bit stream on `Q_ser_x`, with `eos_ser_x` flagging end-of-sequence.
- **ser_y** — identical serialiser for the 10-bit `y[9:0]` output, independently enabled via `ena_ser_y`.

![Alt text](hardware_arch.jpeg)

All internal arithmetic uses **Q2.8** (10-bit signed, scale = 256). The Hénon attractor is bounded to x ∈ [−1.5, 1.5] and y ∈ [−0.4, 0.4].


## How to test

### 1. Reset the system

Set:
- `rst_n = 0` for a few clock cycles  
- Then set `rst_n = 1`

Initial state:
x = 0, y = 0

---

### 2. Generate Henon data

Set:
- `ena_henon = 1`

Then:
- New values are generated every clock cycle
- `done_henon` indicates valid outputs

---

### 3. Capture a sample

Wait until:
- `done_henon = 1`

At that moment:
- `x_out` and `y_out` contain valid data

---

### 4. Serialize X output

1. Pulse:
   ena_ser_x = 1 (for 1 clock cycle)

2. Then:
   ena_ser_x = 0

3. Observe:
- `Q_ser_x`: outputs 10 bits (LSB first)
- One bit per clock cycle

4. Wait for:
- `eos_x = 1`

---

### 5. Serialize Y output

Repeat the same process:

1. Pulse:
   ena_ser_y = 1

2. Read:
- `Q_ser_y`

3. Wait for:
- `eos_y = 1`

---

### 6. Expected behavior

- First outputs may be zero due to initialization
- Subsequent values follow Henon chaotic dynamics
- Serial output:
  - 10 bits per value
  - LSB first
  - `eos_*` marks completion
 
### How to connect
| Signal | Dir | Description |
|---|---|---|
| `clk` | in | System clock |
| `rst_n` | in | Active-low synchronous reset |
| `ena_henon` | in | Enable Hénon map iteration |
| `done_henon` | out | High when valid sample is ready |
| `ena_ser_x` | in | Start serialisation of x |
| `Q_ser_x` | out | Serial bit stream for x |
| `eos_ser_x` | out | End-of-sequence flag for x |
| `ena_ser_y` | in | Start serialisation of y |
| `Q_ser_y` | out | Serial bit stream for y |
| `eos_ser_y` | out | End-of-sequence flag for y |

## External hardware

To test this design on real hardware, the following is required:

### Required hardware

- Tiny Tapeout demo board (with the fabricated chip installed)
- USB cable for power and communication
- A computer to configure and monitor the board

---

### Optional but recommended

- Logic analyzer (recommended) to observe serial outputs:
  - `Q_ser_x`
  - `Q_ser_y`

- Alternatively:
  - LEDs (to visualize activity)
  - Oscilloscope (to inspect timing and bitstream)
