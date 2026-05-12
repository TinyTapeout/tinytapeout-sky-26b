## How it works

MAW Bird Shooter is a fully synthesized single-player arcade game fabricated as a Tiny Tapeout ASIC. It drives a 640×480 60 Hz VGA display directly from the chip's output pins using a 50 MHz system clock.

**Game loop**

The screen shows an animated bird wandering across the display and a player-controlled crosshair. The player has 10 shots to aim and fire. Each shot is immediately scored as a HIT (crosshair overlaps the bird bounding box) or MISS. After each shot, a brief HIT or MISS overlay is shown before the next round begins. The bird respawns at a pseudo-random position after every shot. Win condition: 7 or more hits out of 10 (≥ 70%). Press SHOOT on the win or lose screen to restart.

**Architecture**

- `game_state_fsm` — central FSM controlling game flow: RESET → START_SCREEN → SHOOTING → HIT / HIT_DELAY → MISS / MISS_DELAY → WON / LOST.
- `crosshair_control` — moves the crosshair one step per game tick while a directional button is held.
- `enemy_movement` — animates the bird along a triangle-wave trajectory seeded by two independent 16-bit LFSRs, giving varied spawn positions and movement paths.
- `bird_animated` — cycles through five bird sprite frames to produce a flapping wing animation.
- `render_engine` + `vgatiming` — composites all sprites (bird, crosshair, HIT/MISS/WON/LOST overlays, shot-counter UI) and outputs standard VGA sync signals with 1-bit-per-channel RGB colour.
- **Game tick** — a divide-by-two counter on the 60 Hz VGA frame signal produces a 30 Hz game tick. All movement, FSM transitions, and animations advance only on the game tick, keeping gameplay speed consistent and hardware-rate-independent.
- **Button conditioning** — every button input passes through a two-stage synchroniser (CDC) followed by a dual-edge detector. The held (level) signal drives crosshair movement; the rising edge fires a shot; the falling edge triggers game-state transitions (start/restart), preventing an accidental shot at game start.

## How to test

1. Connect the five button inputs (ui[3..7]) to momentary push-buttons. Each button pin must have a **10 kΩ pull-down resistor** to GND so the idle state is logic 0 (see pinout and button wiring note below).
2. Connect the VGA output pins (uo[3..7]) to a VGA monitor or a TinyVGA PMOD board. The pin order matches the standard Tiny Tapeout VGA PMOD pinout: `{HSYNC, VSYNC, R, G, B, GND, GND, GND}` on uo[7:0].
3. Apply a 50 MHz clock and release reset (rst_n = 1).
4. The start screen appears. Press **SHOOT** (ui[3]) to begin.
5. Use **UP / DOWN / LEFT / RIGHT** (ui[7..4]) to aim the crosshair at the bird, then press **SHOOT** to fire.
6. After 10 shots the WON or LOST screen is displayed. Press **SHOOT** to restart.

## External hardware

- VGA monitor or TinyVGA PMOD (compatible with Tiny Tapeout VGA PMOD pinout)
- 5× momentary push-buttons
- 5× 10 kΩ resistors used as external pull-downs on each button pin (ui[3..7])

**Button wiring note:** All button inputs are **active-high** — a logic 1 means the button is pressed. The ASIC has no internal pull resistors on these pins, so each must be held at logic 0 via a 10 kΩ pull-down resistor to GND when idle, and driven to VCC when pressed. Do **not** use pull-up resistors, as that would invert the polarity and the buttons will not work correctly.
