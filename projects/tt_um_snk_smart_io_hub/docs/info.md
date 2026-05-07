## How it works

This design implements a UART-controlled smart I/O hub.

A UART receiver listens on `ui_in[0]` and receives command bytes using a standard 8N1 protocol. A small command decoder updates internal registers based on the received data.

The design contains three main blocks:

- A 16-channel PWM generator driven by an 8-bit counter
- An 8-channel timer bank for delays and periodic events
- A simple control interface for configuration

Each PWM output compares a shared counter with its duty value. If the counter is less than the duty value, the output is high. Otherwise, it is low.

The timer block counts down from programmed values and generates timeout pulses. These pulses can be used internally for sequencing or timing operations.

The system is designed to be scalable and uses multiple hardware blocks in parallel to utilize multiple Tiny Tapeout tiles.

---

## How to test

1. Connect a UART signal to `ui_in[0]`
2. Set `ui_in[1] = 1` to enable command input
3. Apply reset using `rst_n`
4. Send command bytes over UART

Example:

- `0x80` followed by a value sets PWM channel 0 duty
- `0x90` followed by a value sets the PWM prescaler

The outputs can be observed on `uo_out` and `uio_out`.

Expected behavior:

The PWM outputs change according to the received UART commands and produce periodic waveforms.

---

## External hardware

- USB-to-UART adapter or microcontroller
- Optional oscilloscope or logic analyzer

No additional hardware is required.
