## How it works

This is a multiplayer reaction time game with VGA display output (640×480 @ 60 Hz). The design supports two game modes and one or two players.

### Game Modes

- **Classic Mode** (`mode_game = 0`): Any button press after the stimulus appears counts as a valid response.
- **Target Match Mode** (`mode_game = 1`): Only the button corresponding to the highlighted quadrant is correct. The target quadrant is selected randomly using a 16-bit LFSR.

### Player Modes

- **1-Player** (`mode_player = 0`): Single round; result is displayed immediately after the button press.
- **2-Player** (`mode_player = 1`): P1 plays first, then P2 plays the same type of round. After both finish, the winner is determined by comparing reaction times (with validity — a wrong button in Target Match counts as a loss).

### Game Flow (FSM)

The game controller is an 8-state FSM:

1. **IDLE** — Waiting for the Start button. Screen shows gray quadrants and "P1 PLAY".
2. **WAIT_RANDOM** — A random delay of 1,000–5,095 ms counts down. Buttons pressed here trigger a false start.
3. **STIMULUS** — The target quadrant turns green. The reaction timer starts counting in 1 ms increments.
4. **RESULT** — Button pressed; timer freezes. Displays reaction time in green (correct) or red (wrong button in Target Match).
5. **FALSE_START** — All quadrants turn red, "EARLY" text displayed. Press Start to continue.
6. **IDLE_2P** — P1's score is saved; "P2 PLAY" is shown. Waiting for P2 to press Start.
7. **COMPARE** — Single-cycle state: winner logic evaluates P1 vs P2 times.
8. **SHOW_WINNER** — Alternates between showing P1's time, P2's time, then the winner text ("P1 WIN", "P2 WIN", or "TIE").

### Timing

The 25 MHz clock is prescaled to a 1 ms tick by a 25,000-cycle counter in `core_timer`. The reaction counter increments on each tick while in STIMULUS state, saturating at 9,999 ms. The random delay counter loads `lfsr[11:0] + 1000` on game start and decrements each ms.

### VGA Display

The screen is divided into regions using 32×32 pixel tiles:
- **Four quadrants** (TOP, LEFT, CENTER, RIGHT): show the stimulus and game state via color.
- **Status bar**: 6-character text (e.g., "P1 PLAY", "EARLY", "P2 PLAY").
- **Time display**: 4-digit BCD reaction time (with leading zero suppression), rendered in the lower center of the screen.
- **Mode/player labels**: "CLASSIC"/"TARGET" and "1P"/"2P" shown in the top-left and top-right corners at all times.

## How to test

1. Assert `rst_n = 0` for several cycles to reset, then release (`rst_n = 1`).
2. Set mode_game and mode_player to select game and player mode.
3. Press Start. The screen goes dark for random delay.
4. Wait for the green stimulus to appear. Press the correct reaction button.
5. The reaction time (in ms) is displayed on screen. Press Start again to replay.

For 2-player mode: after P1's result screen, press Start to hand off to P2. After P2 reacts, the winner is displayed.

To test false start: press any reaction button before the stimulus appears. The screen turns red with "EARLY".

## Pin Assignments

| Pin | Signal | Description |
|-----|--------|-------------|
| `ui_in[1]` | `button_0` | Reaction button 0 (TOP quadrant) |
| `ui_in[2]` | `button_1` | Reaction button 1 (LEFT quadrant) |
| `ui_in[3]` | `button_2` | Reaction button 2 (CENTER quadrant) |
| `ui_in[4]` | `button_3` | Reaction button 3 (RIGHT quadrant) |
| `ui_in[5]` | `start` | Start / advance button |
| `ui_in[6]` | `mode_game` | 0 = Classic, 1 = Target Match |
| `ui_in[7]` | `mode_player` | 0 = 1-Player, 1 = 2-Player |
| `uo_out[1:0]` | `vga_r[1:0]` | VGA red channel (2-bit) |
| `uo_out[3:2]` | `vga_g[1:0]` | VGA green channel (2-bit) |
| `uo_out[5:4]` | `vga_b[1:0]` | VGA blue channel (2-bit) |
| `uo_out[6]` | `vga_hsync` | VGA horizontal sync |
| `uo_out[7]` | `vga_vsync` | VGA vertical sync |

## External hardware

- VGA monitor with standard 640×480 @ 60 Hz support
- VGA connector with 2-bit R/G/B resistor DAC 
- 5–6 momentary push buttons 
- 2 switches 
