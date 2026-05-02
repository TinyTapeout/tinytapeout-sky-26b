<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This design is a Wolfenstein-style raycaster that outputs a 640x480 VGA signal at 25 MHz. The display is portrait-oriented: each horizontal scanline renders one vertical column of the scene.
 
For each scanline, a DDA ray is cast into a hardcoded 32x32 grid map stored on chip. Wall distance is computed using a reciprocal lookup table. Wall height on screen is proportional to the reciprocal of the distance. X-face walls are drawn with the light wall color and Y-face walls with the dark wall color. At low hpos values the background is the ceiling color, at high hpos values it is the floor color. Ceiling is dark gray (RGB222 = 10_10_10) and floor is darker gray (RGB222 = 01_01_01).
 
The player position and angle are updated once per vsync. Direction is stored as a 6-bit index into a 64-entry LUT (5.625 degrees per step). Movement speed is computed as dir * 77 / 1024 using shifts and adds.
 
Wall color is selected by `ui_in[6:5]`:
- 00: blue (light = 00_00_11, dark = 00_00_10)
- 01: red (light = 11_00_00, dark = 10_00_00)
- 10: green (light = 00_11_00, dark = 00_10_00)
- 11: XOR pattern based on hpos and vpos

## How to test
Connect a VGA PMOD to `uo_out`. Apply a 25 MHz clock. Hold `rst_n` low then release to start.
 
`ui_in` controls:
 
| `ui_in` bit | Function |
|---|---|
| 0 | Move forward (along current facing direction) |
| 1 | Move backward (along current facing direction) |
| 2 | Turn left (increment angle index) |
| 3 | Turn right (decrement angle index) |
| 4 | Demo mode: moves forward along X axis every frame, forward/back buttons ignored |
| 6:5 | Wall color select (00=blue, 01=red, 10=green, 11=XOR) |
| 7 | Unused |
 
You should see a 3D view of the maze on the monitor. The `uio` pins are all outputs. Bits 5:0 show the current angle index (0-63). Bit 6 shows pos_x map cell bit 1. Bit 7 shows pos_y map cell bit 3.

## External hardware
A VGA PMOD connected to `uo_out`:

| `uo_out` bit | Signal |
|-----|----------|
| 0 | R1 |
| 1 | G1 |
| 2 | B1 |
| 3 | vsync (active low) |
| 4 | R0 |
| 5 | G0 |
| 6 | B0 |
| 7 | hsync (active low) | 
 
Any VGA monitor that accepts 640x480 at 60 Hz.
