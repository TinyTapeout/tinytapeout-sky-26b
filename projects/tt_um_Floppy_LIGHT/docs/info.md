## How it works

This project is a VGA-based interactive mini-game inspired by Flappy Bird, implemented in Verilog for Tiny Tapeout.

The player is represented by the LIGHT logo, stored as a 1-bit bitmap ROM and displayed on a 640×480 VGA screen. The logo acts as the “bird” and moves vertically under a simple gravity model. Pressing the flap input gives it an upward velocity.

Pipe obstacles scroll from right to left across the screen. The design checks for collisions between the logo hitbox and the pipes, the top of the screen, or the ground. When a collision occurs, the game enters a game-over state. The score increases each time the player successfully passes an obstacle.

The project also includes several interactive modes controlled through the dedicated input pins, such as pause, hard mode, color cycling, hitbox display, logo inversion, and night background mode.

## How to test

Run the Tiny Tapeout VGA simulation and connect the VGA output to the TinyVGA PMOD viewer/simulator.

Controls:

| Input | Function |
|---|---|
| `ui_in[0]` | Start / flap |
| `ui_in[1]` | Restart after game over |
| `ui_in[2]` | Pause / unpause |
| `ui_in[3]` | Hard mode |




To play:

1. Start the simulation.
2. Toggle `ui_in[0]` from `0` to `1` to start the game.
3. Toggle `ui_in[0]` again each time you want the logo to flap.
4. Avoid the scrolling pipe obstacles.
5. When the game is over, toggle `ui_in[1]` from `0` to `1` to restart.
6. Try the other inputs to change game modes and visual effects.

The score is also exposed on the bidirectional output pins:

| Output | Function |
|---|---|
| `uio_out[3:0]` | Current score |
| `uio_out[4]` | Game over flag |
| `uio_out[5]` | Collision flag |
| `uio_out[6]` | Pause status |
| `uio_out[7]` | Hard-mode status |

## External hardware

This project uses a VGA PMOD / TinyVGA-compatible display output.

The VGA signals are mapped to `uo_out` as follows:

| Output | VGA signal |
|---|---|
| `uo_out[7]` | HSYNC |
| `uo_out[6]` | Blue bit 0 |
| `uo_out[5]` | Green bit 0 |
| `uo_out[4]` | Red bit 0 |
| `uo_out[3]` | VSYNC |
| `uo_out[2]` | Blue bit 1 |
| `uo_out[1]` | Green bit 1 |
| `uo_out[0]` | Red bit 1 |

Required external hardware:

- TinyVGA PMOD or compatible VGA PMOD
- VGA monitor or VGA simulator/viewer
