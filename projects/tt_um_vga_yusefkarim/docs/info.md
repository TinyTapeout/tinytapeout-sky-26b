<!--
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a shameless promo screen for the RISC-V Ottawa group that we are just about to form. It is based on the standard VGA demo from vga-playground.com. The design drives a TinyVGA PMOD with 2-bit-per-channel colour, sourced from an 8-entry palette ROM.

Three text messages, "RISC-V Ottawa", "Join us!", and "riscvottawa.ca" bounce around the frame DVD-screensaver style. Each is an independent 128×16 sprite with its own position and direction. Their palette colours are derived from the upper bits of each sprite's X position, so as a sprite drifts across the screen its colour walks through the 8-entry palette; a constant per-sprite XOR offset keeps the three from sharing a colour at the same time.

When two or three message sprites overlap, the overlap rectangle lights up: the glyph pixels of the colliding messages are XOR-combined and drawn in a rapidly cycling "strobe" colour, while the rest of the overlap rectangle is filled with a dimmed version of the same colour, so collisions show as a glowing flash that pulses through the palette.

Behind the bouncing text, a small CPU chip sprite spins in the centre of the screen. The spin is faked as a "spinning coin"; the four animation frames share storage by exploiting horizontal-flip symmetry (frame 3 is the hflip of frame 1, frame 2 is hflip-symmetric so only its left half is stored). Bouncing text always renders on top of the chip.

To squeeze the design into a 1×1 Tiny Tapeout tile, the text is rendered character-indexed instead of as raw pixels. A small font ROM holds one 8×16 glyph per unique character used (drawn from the kernel's PSF2 8×16 console font), and a per-message stream ROM names which glyph appears in each of the 16 columns. At pixel time the message stream is looked up by `lx[6:3]` and that result indexes the font ROM by `(char_idx, ly)`. The chip lives in a separate small ROM holding one and a half 32×32 frames.

The pixel pipeline is fully combinational from `(pix_x, pix_y)` to the RGB output register. Sprite positions update once per frame at `(pix_x, pix_y) == (0, 0)`.

## How to test

[Open the design in vga-playground](https://vga-playground.com/) and paste in `src/project.v`, `src/hvsync_generator.v`, `src/palette.v`, `src/bitmap_rom.v`, and `src/chip_rom.v`. You should see the three messages bouncing on a black background, the chip spinning in the middle, and a strobing flash whenever two messages overlap.

To change the text, edit the `MESSAGES` list at the top of `scripts/gen_font_rom.py` and re-run it; the script repulls glyphs from the system PSF2 console font and rewrites `src/bitmap_rom.v`. To swap the chip art, regenerate `src/chip_rom.v` from a 128×32 source bitmap.

RTL simulation using the cocotb harness in `test/` is currently overridden to just always pass. Nobody got time for tests (╯°□°)╯︵ ┻━┻.

## External hardware

TinyVGA PMOD on the dedicated outputs (`uo`):

| pin | signal |
|-----|--------|
| `uo[7]` | HSync |
| `uo[3]` | VSync |
| `uo[6:4]` | high bit of R / G / B |
| `uo[2:0]` | low bit of R / G / B |

Tested in VGA Playground; targets a standard 640×480 @ 60 Hz VGA monitor.

## BONUS - imgtoveri.py

I attended the [Latch-Up 2026 Tiny Tapeout workshop](https://fossi-foundation.org/latch-up/2026#tiny-tapeout-workshop-pat-deegan). During this workshop Pat Deegan provided us with a great script to convert text to the VGA playground bitmap format/code.
I took inspiration from his script to create [imgtovery.py](../imgtoveri.py).
The script accepts any PIL-supported image format (PNG, JPEG, BMP, GIF, TIFF, WebP, etc) and converts it the same VGA playground bitmap code. You can use this script to add your own image to the logo project preset on the TT VGA playground site!
