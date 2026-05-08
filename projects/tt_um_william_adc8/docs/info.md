<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is a digital ADC chain for 1-bit sigma-delta bitstreams.

1. The incoming bitstream (`ui[1]`) is sampled by the Tiny Tapeout clock.
2. A 256-cycle decimator counts ones to produce a raw 8-bit code.
3. Gain trim (`uio[3:0]`) and signed offset trim (`ui[7:4]`) are applied.
4. The calibrated conversion result is output on `uo[7:0]`.

Status bits are exported on `uio[7:4]` as `{saturated, activity, busy, valid}`.

## How to test

1. Go to the `test` folder.
2. Run RTL simulation:

```sh
make -B
```

3. The cocotb test checks conversion and status behavior:
	- No `valid` pulse while disabled.
	- Correct decimation code for known bit densities.
	- Correct gain/offset calibration behavior.
	- Saturation flag assertion on clipped samples.
	- Activity flag response for dynamic vs static input windows.

You can inspect waveforms using GTKWave:

```sh
gtkwave tb.fst tb.gtkw
```

## External hardware

No external hardware is required for RTL verification.
