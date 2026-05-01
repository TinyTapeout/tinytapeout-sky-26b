<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a hardware triangle rasterizer that renders filled triangles to a VGA display at 640×480 @ 60 Hz.

The design uses the **edge-equation (half-plane) method**: for each edge of the triangle, a linear equation `e = A·x + B·y + C` is evaluated across the screen. A pixel is inside the triangle when all three edge equations are non-negative. To avoid per-pixel multiplications, the rasterizer uses **incremental evaluation** — edge values are updated with a single addition as the scan moves horizontally (add A) or advances a row (add B).

### Pipeline

```
ui_in[7:0] (data_byte) + uio_in[0] (valid)
    → triangle_receiver   — collects 7 serial bytes: x0, y0, x1, y1, x2, y2, color
    → triangle_setup      — FSM computes edge coefficients A, B, C for all 3 edges
    → rasterizer          — incremental per-pixel edge evaluation, outputs pixel_on + color
    → vga_timing          — 640×480 @ 60 Hz sync generation
    → uo_out[7:0]         — VGA PMOD output
```

### Coordinate space

Triangle vertices are specified in an 8-bit (0–255) coordinate space that maps to a centered **256×256 viewport** on the 640×480 display (x offset 192, y offset 112). The surrounding area is a pink background.

### Color encoding

The 8-bit color byte is packed as `[7:6]=R, [5:4]=G, [3:2]=B, [1:0]=unused`. Each channel has 2 bits (0–3 intensity). Example: `0xFC` = white, `0x0C` = blue, `0xC0` = red.

## How to test

Connect a VGA monitor via the TinyTapeout VGA PMOD. To draw a triangle:

1. Hold `rst_n` low then release to reset the design.
2. Send 7 bytes serially through `ui_in[7:0]`, pulsing `uio_in[0]` (valid) high for one clock cycle per byte:
   - Byte 0: x0, Byte 1: y0
   - Byte 2: x1, Byte 3: y1
   - Byte 4: x2, Byte 5: y2
   - Byte 6: color (`0xFC` = white, `0x0C` = blue, `0xC0` = red)
3. The triangle appears within one frame (~16 ms). A new triangle can be loaded at any time after a reset.

Coordinates (0,0) = top-left of viewport; (255,255) = bottom-right.

## External hardware

- TinyTapeout VGA PMOD (2-bit per channel RGB, Digilent-compatible)
- VGA monitor capable of 640×480 @ 60 Hz
- External microcontroller or logic to send triangle bytes over `ui_in` / `uio_in[0]`
