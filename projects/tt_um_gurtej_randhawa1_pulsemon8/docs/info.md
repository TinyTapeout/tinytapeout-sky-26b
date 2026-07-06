<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

PulseMon8 is an 8-bit pulse monitor that counts rising edges on an external input signal. The signal is sampled using the Tiny Tapeout clock, and a pulse is detected when the signal changes from low to high. Pulse detection also asserts the `edge_detect` output for one clock cycle.

The current count is displayed on `uo_out[7:0]`. Counting can be enabled or disabled using the `enable` input, and the count can be cleared using the `clear` input.

You can provide an 8-bit comparison value through `ui_in[7:0]`. When the current count is equal to this value, the `match_status` output is asserted. Since `match_status` directly compares the two values, it is also asserted when both the count and comparison value are zero.

The `freeze_on_match` input can be used to automatically stop the counter when a pulse causes the count to reach the comparison value. Once frozen, the `freeze_status` output remains asserted and additional pulses are ignored until the design is cleared or reset.

The `overflow` output is asserted when the counter increments past 255 and wraps back to zero. This flag remains asserted until the design is cleared or reset.


## How to test

For a basic hardware test, first reset the design or set `clear` (`uio_in[6]`) high for one clock cycle. Set `enable` (`uio_in[5]`) high and keep `freeze_on_match` (`uio_in[7]`) low.

Generate a pulse by changing `signal` (`uio_in[4]`) from low to high. Since the input is sampled using the project clock, hold both the low and high levels for at least one clock cycle. Each rising edge should increase the count on `uo_out[7:0]` by one. Falling edges should not affect the count.

For example:

1. Clear the design using `uio_in[6]`.
2. Set `enable` (`uio_in[5]`) high.
3. Apply three rising edges to `signal` (`uio_in[4]`).
4. Confirm that `uo_out[7:0]` displays `3`.

To test comparison and freezing:

1. Clear the design.
2. Set `compare_value` (`ui_in[7:0]`) to `3`.
3. Set `enable` (`uio_in[5]`) high.
4. Set `freeze_on_match` (`uio_in[7]`) high.
5. Apply three rising edges to `signal` (`uio_in[4]`).
6. Confirm that the count on `uo_out[7:0]` stops at `3`.
7. Confirm that `match_status` (`uio_out[2]`) and `freeze_status` (`uio_out[3]`) are high.
8. Apply more pulses and confirm that the count remains unchanged.
9. Assert `clear` (`uio_in[6]`) and confirm that counting can begin again.

`match_status` is also high when both the count and comparison value are zero.

To test overflow, keep `freeze_on_match` (`uio_in[7]`) low and apply enough rising edges for the counter to wrap from 255 back to 0. `overflow` (`uio_out[1]`) should go high when the counter wraps and remain high until the design is cleared or reset.


## External hardware

No custom external hardware is required.

The project can be tested using a Tiny Tapeout demoboard. The board controls can be used to set `compare_value`, `enable`, `clear`, and `freeze_on_match`. The pulse input can be driven using a switch, push button, microcontroller, function generator, or another digital signal source.

The current count can be observed on `uo_out[7:0]`, while the status signals can be viewed using the demoboard outputs, LEDs, or a logic analyzer.

A mechanical push button may bounce and produce multiple rising edges from a single press. For more controlled testing, use a debounced button or another clean digital pulse source.
