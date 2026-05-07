<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The Tile Growth Simulator is a two-phase interactive game running on a 16x16 grid where each cell can hold one of two colors (A or B) or be empty. In the pre-game phase, the player uses four directional buttons to move a cursor, a color select button to toggle between colors, and a place button to plant their chosen color on the grid. Pressing start kicks off the simulation, where the InGameFSM repeatedly scans the grid and, when the LFSR16 produces a specific random value, spreads a colored cell into an empty neighbor. The LFSR16 is a 16-bit linear feedback shift register seeded by the player's cursor movements during pre-game to ensure a unique outcome every game. The simulation runs in rounds separated by stall periods until every cell is filled, at which point the game finishes. Throughout both phases the ws2812b_driver serializes 24-bit GRB color values to a 16x16 WS2812B LED matrix over a single-wire protocol, refreshing every half second. The sole output is the WS2812B data line, with inputs being the six player buttons.

## How to test

The design can be tested using the included cocotb testbench, which simulates the full pre-game and in-game flow. The testbench runs three unique starting configurations: corners with center seeds, a diagonal pair, and a single center seed. For each configuration it places the corresponding colored cells on the grid, presses start, and monitors the simulation by printing the grid state to the console after each spread round. Correctness is verified by visually inspecting the printed grid output and checking that colors spread outward from their starting positions as expected.

## External hardware

-16x16 LED Matrix (driven by WS2812B protocol)

-Pushbuttons for inputs

# Project Info 

Frequency Requirement: **25 MHz**

Frame update rate : **2 Hz**

---

## Pinout:

### Inputs

| Pin     | Signal       | Description        |
|---------|--------------|--------------------|
| `ui[0]` | `up`         | Move cursor up     |
| `ui[1]` | `down`       | Move cursor down   |
| `ui[2]` | `left`       | Move cursor left   |
| `ui[3]` | `right`      | Move cursor right  |
| `ui[4]` | `color_sel`  | Toggle color A/B   |
| `ui[5]` | `place`      | Place color        |
| `ui[6]` | `start`      | Start simulation   |
| `ui[7]` | —            | Unused             |

### Outputs

| Pin     | Signal  | Description            |
|---------|---------|------------------------|
| `uo[0]` | `data`  | WS2812B data output    |
| `uo[1]` | —       | Unused                 |
| `uo[2]` | —       | Unused                 |
| `uo[3]` | —       | Unused                 |
| `uo[4]` | —       | Unused                 |
| `uo[5]` | —       | Unused                 |
| `uo[6]` | —       | Unused                 |
| `uo[7]` | —       | Unused                 |

### Bidirectional pins

| Pin      | Signal | Description |
|----------|--------|-------------|
| `uio[0]` | —      | Unused      |
| `uio[1]` | —      | Unused      |
| `uio[2]` | —      | Unused      |
| `uio[3]` | —      | Unused      |
| `uio[4]` | —      | Unused      |
| `uio[5]` | —      | Unused      |
| `uio[6]` | —      | Unused      |
| `uio[7]` | —      | Unused      |
