## How it works

This design is a UART-controlled smart I/O hub built around a 64-channel PWM engine.

UART commands arrive on `ui_in[0]` using a standard 8N1 receiver. The command decoder can write PWM duty cycles, set the prescaler, and load internal modulation registers.

The 64 PWM channels are divided into banks of 8:
- `ui_in[6:4]` selects which bank appears on `uo_out`
- the next bank appears on `uio_out`
- `ui_in[7]` switches `uio_out` to a status page instead of PWM output

The upper 8 channels are reserved for live internal modulation:
- a free-running phase counter
- a small LFSR-style pattern source
- an add/multiply datapath
- a status pattern byte

This gives the design a practical purpose on a PCB while also keeping enough parallel logic to make good use of a 1x2 Tiny Tapeout floorplan.

---

## How to test

1. Connect a UART source to `ui_in[0]`
2. Set `ui_in[1] = 1` to enable command handling
3. Set `ui_in[6:4]` to choose the output bank
4. Keep `ui_in[7] = 0` to show PWM data on `uio_out`
5. Apply reset using `rst_n`

Example commands:
- `0x80` + duty byte → set PWM channel 0
- `0x81` + duty byte → set PWM channel 1
- `0x88` + duty byte → set PWM channel 8
- `0x89` + duty byte → set PWM channel 9
- `0xC0` + byte → set prescaler
- `0xC1` + byte → set ALU input A
- `0xC2` + byte → set ALU input B
- `0xC3` + byte → set phase seed
- `0xC4` + byte → set LFSR seed

**Expected output:** the selected PWM bank appears on `uo_out`, the next bank appears on `uio_out`, and the status page appears on `uio_out` when `ui_in[7] = 1`.

---

## External hardware

- USB-to-UART adapter or microcontroller for command input
- Oscilloscope or logic analyzer for observing PWM outputs

No additional external hardware is required for basic operation.
