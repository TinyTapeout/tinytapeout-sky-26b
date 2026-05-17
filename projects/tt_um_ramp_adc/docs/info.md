## How it works

A **2-channel 8-bit single-slope ADC**. The selected analog input is
compared against an on-chip linear ramp; the 8-bit count at the moment
the ramp crosses the input is the output code.

Blocks:

- **Bias** — diode-connected PMOS + poly resistor generates the gate bias
  `vbp` for the on-chip current sources.
- **Ramp** — a long-channel PMOS biased by `vbp` charges a ~1.5 pF MIM
  cap to produce a linear ramp; an NMOS switch (driven by the digital
  block) pulls it back to 0 V at the start of each conversion.
- **2:1 analog MUX** — CMOS transmission gates select between `ua[0]`
  and `ua[1]` based on `ui_in[0]`.
- **Sample-and-hold** — captures the selected input on a hold cap at the
  start of each conversion; can be bypassed via `ui_in[1]`.
- **Comparator** — two-stage PMOS-input differential comparator with
  output buffers.
- **Digital** (LibreLane-synthesized) — 8-bit free-running counter,
  rising-edge detector on the comparator output, and an 8-bit output
  register that captures the count at the first crossing per frame.

One conversion = 256 clock cycles. At the recommended ~4 MHz clock,
that's 64 µs (≈16 kSPS).

### Pinout

| Pin | Direction | Function |
|---|---|---|
| `ua[0]` | analog in | channel-0 analog input (0 – ~1.0 V) |
| `ua[1]` | analog in | channel-1 analog input (0 – ~1.0 V) |
| `ui_in[0]` | digital in | channel select (0 → ua[0], 1 → ua[1]) |
| `ui_in[1]` | digital in | S&H bypass (0 → use S&H, 1 → pass-through) |
| `clk` | digital in | conversion clock (~4 MHz recommended) |
| `rst_n` | digital in | async active-low reset |
| `uo_out[7:0]` | digital out | last captured ADC code |
| `uio_out[0]` | digital out | `sample_valid` — new code available |
| `uio_out[1]` | digital out | `cmp_out` (observation) |
| `uio_out[2]` | digital out | `rst_ramp` (observation) |

### Input voltage range

The PMOS-input comparator works cleanly for input voltages up to
~1.0 V. Inputs above ~1.0 V exceed the comparator's common-mode
range and produce unreliable codes. The full 8 bits are usable over
**0 – ~1.0 V**.

## How to test

1. Power: VDPWR = 1.8 V, VGND = 0 V.
2. Pulse `rst_n` low briefly, then high.
3. Drive `clk` at ~4 MHz.
4. Set `ui_in[0]` (channel select) and `ui_in[1]` (S&H bypass: 0 = on).
5. Apply 0 – ~1.0 V on the selected `ua[*]`.
6. After 256 clock cycles, read `uo_out[7:0]` when `uio_out[0]` pulses.

Code is roughly `code ≈ V_in × 256 / 1.0 V`. Calibration with two known
voltages corrects gain and offset.

### Channel switching

Toggle `ui_in[0]`. Hold stable for at least one conversion before
trusting the next reading.

### Clock dependence

The ramp reaches ~1.0 V at count 255 at ~4 MHz. Other clock rates change
the effective input range (higher → narrower, lower → top codes become
unreliable).

## External hardware

- Clock source on `clk`
- 0 – ~1.0 V analog signal on `ua[0]` / `ua[1]`
- Logic inputs for `ui_in[0..1]`
- Logic analyzer or read-back on `uo_out[7:0]` and `uio_out[0]`
