<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design combines two IP blocks:

- SPI memory controller (`spi_mem_ctrl`): A small FSM that reads bytes from an external SPI RAM using command `0x03` (read) plus a 16-bit address. It drives `cs_n`, `sck`, and `mosi`, samples `miso`, and exposes `busy`/`valid` along with the received byte.
- VGA timing core (`vga_sync`): Generates 640x480 @ 60 Hz timing. It produces `hsync`, `vsync`, `display_on`, and pixel coordinates (`screen_hpos`, `screen_vpos`).

`ui_in[0]` selects the mode:
- SPI test mode (`ui_in[0]=0`): `uo_out` outputs the raw SPI byte. `ui_in[1]` is a start pulse, `ui_in[2]` is last, and `ui_in[7:4]` select the high address nibble.
- VGA mode (`ui_in[0]=1`): `uo_out` outputs VGA timing + 2-bit RGB (6-bit color). Bytes fetched from SPI are latched into `pixel_col`.

## How to test

1. Provide a stable clock and active-low reset (`rst_n`).
2. SPI mode: set `ui_in[0]=0`, pulse `ui_in[1]` for one cycle, set `ui_in[2]` for single-byte read, and set `ui_in[7:4]` for address high nibble. Observe `uio_out[7:5]` for `{busy, valid, last}` and read the byte on `uo_out` when `valid` goes high.
3. VGA mode: set `ui_in[0]=1`, feed a 25.175 MHz pixel clock, and observe `uo_out` for `HS`, `VS`, and 2-bit RGB.

Use the cocotb test in `test/` to exercise the SPI path in simulation.

## External hardware

- SPI RAM compatible with 23LC512 read protocol (or a simulator providing `miso`).
- VGA connector or display interface to observe `hsync`/`vsync` timing (optional for simulation).
