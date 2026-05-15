## How it works

This is a **2-channel 8-bit single-slope analog-to-digital converter**.

A single-slope ADC compares the input voltage against a linearly rising ramp.
The digital code corresponds to how many clock cycles it took for the ramp to
cross the input — the longer it takes, the higher the input voltage.

The chip contains five custom analog blocks plus a synthesized digital
controller:

- **Bias generator** — a diode-connected PMOS with a poly resistor producing
  a stable PMOS gate-bias voltage `vbp` for the on-chip current sources.
- **Ramp generator** — a long-channel PMOS current source biased by `vbp`
  charges a ~1.5 pF MIM capacitor, producing a 0 → ~VDPWR linear ramp.
  An NMOS reset switch (driven by the digital block) pulls the ramp back
  to 0 V at the start of every conversion.
- **2:1 analog MUX** — two CMOS transmission gates select between `ua[0]`
  and `ua[1]` based on the channel-select input bit.
- **Sample-and-hold** — a CMOS transmission gate captures the selected
  analog input onto a hold capacitor at the start of each conversion;
  a bypass mux allows the S&H to be skipped (input routed straight through).
- **Comparator** — a two-stage PMOS-input differential comparator with
  output buffers, producing a clean digital "ramp ≥ input" signal.
- **Digital controller** (synthesized via OpenLane/LibreLane) — an 8-bit
  free-running counter generates `rst_ramp` at counter wrap, synchronizes
  the comparator output, captures the count on the first detected crossing,
  and exposes the captured code via an 8-bit output bus plus a `sample_valid`
  strobe.

One full conversion takes 256 clock cycles. At an input clock of ~1 MHz the
ramp completes a full sweep in ~256 µs, giving an effective sample rate of
about 4 kSPS.

### Pinout

| Pin | Direction | Function |
|---|---|---|
| `ua[0]` | analog in | channel-0 analog input (0 – ~1.8 V) |
| `ua[1]` | analog in | channel-1 analog input (0 – ~1.8 V) |
| `ui_in[0]` | digital in | channel select (0 → ua[0], 1 → ua[1]) |
| `ui_in[1]` | digital in | S&H bypass (0 → use S&H, 1 → input routed straight to comparator) |
| `clk` | digital in | conversion clock (recommend ~1 MHz) |
| `rst_n` | digital in | async active-low reset |
| `uo_out[7:0]` | digital out | last captured ADC code |
| `uio_out[0]` | digital out | `sample_valid` strobe — high while a fresh code is available |
| `uio_out[1]` | digital out | internal cmp_out signal for observation |
| `uio_out[2]` | digital out | internal rst_ramp signal for observation |

## How to test

### Basic test (channel 0)

1. **Apply power**: VDPWR = 1.8 V, VGND = 0 V.
2. **Pulse `rst_n` low** briefly, then high, to reset the counter.
3. **Drive `clk`** with a square wave at ~1 MHz (the ADC is functional over
   a wide range, but the input range and conversion accuracy are tuned to
   this clock).
4. **Set `ui_in[0] = 0`** to select channel 0, and `ui_in[1] = 0` to enable
   the sample-and-hold.
5. **Apply a DC voltage** in the range 0 – 1.8 V on `ua[0]`.
6. **Wait one conversion period** (256 clock cycles).
7. **Read `uo_out[7:0]`** when `uio_out[0]` goes high — that's the 8-bit
   ADC code, roughly proportional to the input voltage:
   `code ≈ V_in × 256 / V_DPWR`.

### Channel switching

Toggle `ui_in[0]` to switch to `ua[1]`. Hold the new value stable for at
least one full conversion (256 clk cycles) before trusting the next reading.

### S&H bypass

If you suspect the sample-and-hold is affecting the measurement, set
`ui_in[1] = 1` to bypass it.
With bypass enabled, the analog input is connected directly to the
comparator and **must be held stable** for the entire conversion period.

### Verifying with a sweep

For a transfer-function plot:

- Sweep `ua[0]` slowly (e.g. 0 → 1.8 V over a few seconds, 100 mV steps)
- For each input voltage, wait a couple of conversion periods, then read
  `uo_out` on each rising edge of `uio_out[0]`
- Plot `code` vs `V_in` — should be roughly linear

The transfer characteristic is expected to be **monotonic but not perfectly
linear**: ramp curvature, comparator offset, and switch leakage introduce
mild integral nonlinearity. Calibration with two known voltages (e.g. 0 V
and 1.5 V) lets you correct gain and offset in software.

### Clock-frequency dependence

The ADC's full-scale input range tracks the clock period:

- At ~1 MHz, the ramp reaches full scale (~1.8 V) right around count 255.
- At **higher clock rates**, the ramp doesn't have time to reach full scale
- At **lower clock rates**, the ramp saturates at VDPWR before the counter
  wraps → high-voltage inputs all read as 255 (clipped).

For the most useful range, keep `clk` near 1 MHz.

## External hardware

- A clock source on `clk`
- A voltage source on `ua[0]` and/or `ua[1]` (a DAC, potentiometer, or
  signal generator — any DC or slowly-varying analog signal in the
  0 – 1.8 V range)
- Logic inputs for `ui_in[0]` and `ui_in[1]` (channel select and S&H bypass)
- A logic analyzer or read-back interface to capture `uo_out[7:0]` and
  `uio_out[0]` on each `sample_valid` pulse
