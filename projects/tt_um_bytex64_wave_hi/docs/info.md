## How it works

This generates VGA output for a pseudo-3D sine wave ribbon animation and
some simple music. It uses the VGA and audio PMODs listed below.

TODO: Explain the rest of the owl

## How to test

Set the input clock for 25.175MHz. The Pico/RP2040 can output 25.177MHz
on GPOUT0 with a 125MHz main clock and a divider of 4 [integer part] and
247 [fractional part]. This worked on my TV.

Reset, and enjoy. :)

## External hardware

- [Leo's VGA PMOD](https://github.com/mole99/tiny-vga)
- [Tiny Tapeout Audio Pmod](https://github.com/MichaelBell/tt-audio-pmod)
