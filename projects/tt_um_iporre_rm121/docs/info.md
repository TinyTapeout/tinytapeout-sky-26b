<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a hardware-implemented Pong Game for two players, designed to output a standard VGA signal at 640x480 @ 60Hz. The core logic is purely combinational and sequential, without the use of a microprocessor or external memory (ROM/RAM).

VGA Generation: A synchronization module (hvsync_generator) manages the horizontal and vertical timing. It provides the current pixel coordinates (pix_x, pix_y) and the video_active signal to ensure signals are only sent during the visible area.

Game Engine: A Finite State Machine (FSM) updated at every vertical sync (vsync) handles ball movement, collision detection against paddles and boundaries, and score incrementing.

Procedural Graphics: Instead of using bitmaps, the graphics are generated using mathematical comparisons of the current pixel position.

The Triforce is drawn using linear triangular inequalities.

The Mushroom is drawn using a grid-based pixel art mapping to optimize silicon area.

Color Output: A 2-bit per channel (R, G, B) output provides a total of 64 possible colors, though this design uses a specific palette for Link (Green) and Ganon (Red) aesthetics.

## How to test

Once the bitstream is loaded into the FPGA or the chip is active:

Reset: Press the rst_n button (active low) to initialize the ball at the center and reset scores to zero.

Player 1 Controls: Use the first two bits of the input bus (ui_in[0] for Up, ui_in[1] for Down) to move the left (Green) paddle.

Player 2 Controls: Use the next two bits (ui_in[2] for Up, ui_in[3] for Down) to move the right (Red) paddle.

Gameplay: The first player to let the ball pass their paddle gives a point to the opponent. The score is displayed at the top of the screen next to each player's representative icon.

## External hardware

To interact with this project, the following hardware is required:

TinyVGA PMOD: Connected to the output pins (uo_out) to convert the digital signals into an analog VGA signal for a monitor.

VGA Monitor: Capable of displaying a 640x480 resolution at a 60Hz refresh rate.

Input Buttons: Four momentary push-buttons connected to ui_in[0:3] with pull-down resistors (or configured as per the carrier board specs) to control the movement of both players.

Clock Source: A stable 25.175 MHz oscillator is recommended for standard VGA timing, although it can function with a 25 MHz clock with minor timing deviations.

## Technical Specifications
* **Clock Frequency:** 25.175 MHz (Standard VGA 640x480 @ 60Hz).
* **Resolution:** 640 x 480 pixels.
* **Video Standard:** VGA (Negative Sync).

## Detailed Inputs/Outputs
| Pin | Name | Description |
| :--- | :--- | :--- |
| ui_in[0] | P1_UP | Moves the left paddle up. |
| ui_in[1] | P1_DOWN | Moves the left paddle down. |
| ui_in[2] | P2_UP | Moves the right paddle up. |
| ui_in[3] | P2_DOWN | Moves the right paddle down. |
| uo_out[7] | HSYNC | Horizontal Sync (Connect to VGA Pin 13). |
| uo_out[3] | VSYNC | Vertical Sync (Connect to VGA Pin 14). |
| uo_out[0,4] | RED | Red color output (bits 0 and 1). |
| uo_out[1,5] | GREEN | Green color output (bits 0 and 1). |
| uo_out[2,6] | BLUE | Blue color output (bits 0 and 1). |
