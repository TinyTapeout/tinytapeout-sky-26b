# TinyPomodoro — Pomodoro Timer, Clock & Date Display

## How it works

- 3-mode timer and clock system driven by 50MHz clock
- Displays output on external MAX7219 8-digit 7-segment display via SPI
- 4 breadboard buttons for input


### Modes

The design has three display modes, cycled with `btn_right`:

| LED[1:0] | Mode | Display format |
|----------|------|----------------|
| `00` | CLOCK | `HH MM SS --` |
| `01` | DATE | `DD - MM - -- --` |
| `10` | POMODORO | `-- -- MM SS -- -- ` |

### Clock / Counter Chain

- 50 MHz clock feeds a clock divider that produces a 1 Hz tick
- Counter chain tracks seconds (0-59), minutes (0–59), hours (0–23), days (1–31), and months (1–12)
- Each counter (except seconds) has a write-enable so each field can be incremented/decremented


### FSM & Mode Control

**`main_mode_fsm`** top-level display mode (CLOCK, DATE, POMODORO) and a setup sub-mode for each. Pressing `btn_left` enters setup for the current mode; pressing it again exits setup and saves the values.

**`setup_field_fsm`** controls which field is being edited during setup. In clock setup, `btn_right` cycles between minutes and hours. In date setup, it cycles between day and month. The currently selected field blinks like a cursor!

**`pomodoro_fsm`** implements Pomodoro timer with four states: IDLE, WORK, BREAK, and ALARM. In POMODORO mode, `btn_up` starts or pauses the countdown and `btn_down` resets it. The timer defaults to 25-minute work sessions and 5-minute breaks. When a session expires the design enters ALARM state and asserts `buzzer_en` before returning to IDLE.

### SPI Display Driver

- SPI drivers sends 16-bit frames to MAX7219 chip
- Based on logic from [max7219TinyFPGA](https://github.com/cerkit/max7219TinyFPGA)
- Binary counter values are converted to BCD using lookup-tables rather than dividers

### Button Routing

- Active high buttons with external 10kΩ pull-down resistors
- 4 buttons are debounced and converted to rising-edge signals

| Button | Outside setup | Inside setup |
|--------|--------------|--------------|
| `btn_left`  | Enter setup | Exit setup and save |
| `btn_right` | Cycle mode | Cycle to next field |
| `btn_up`    | Start/pause pomodoro | Increment selected field |
| `btn_down`  | Reset pomodoro | Decrement selected field |


---

## How to test

### Setup

1. Connect the MAX7219 8-digit display module to the `uio` pins
2. Connect four push buttons between the `ui` input pins and VCC, with 10kΩ pull-down
   resistors to GND on each button pin
3. Power on. Display should show `00 00 00 --` (hours, minutes, seconds, blank) in
   CLOCK mode

### Testing clock mode

1. Seconds should increment on rightmost two digits every second
2. Press `btn_left` — LED[2] should turn on and the minute digits should start blinking
3. Press `btn_up` — minutes should increment
4. Press `btn_right` — the hour digits blink 
5. Press `btn_up` / `btn_down` to change hours
6. Press `btn_left` — LED[2] turns off, setup exits, clock resumes counting

### Testing date mode

1. Press `btn_right` once — LED[1:0] shows `01`, display shows `DD - MM - -- --`
2. Press `btn_left` to enter setup — day digits blink
3. Press `btn_up` / `btn_down` to change the day
4. Press `btn_right` to cycle to month — month digits blink
5. Press `btn_up` / `btn_down` to change the month
6. Press `btn_left` to exit setup

### Testing pomodoro mode

1. Press `btn_right` twice from CLOCK mode — LED[1:0] shows `10`
2. Display shows `-- 25 00 --`
3. Press `btn_up` to start the countdown — LED[3] (led_work) turns on
4. Press `btn_up` again to pause
5. Press `btn_down` to reset back to 25:00
6. When the countdown reaches 00:00 the design enters ALARM state — LED[5] (buzzer_en), then automatically  transitions to BREAK (5:00 countdown, LED[4] turns on)

### LED indicators

| LED | Meaning |
|-----|---------|
| LED[1:0] | Current mode: 00=CLOCK, 01=DATE, 10=POMODORO |
| LED[2] | Setup mode active |
| LED[3] | Pomodoro work phase running |
| LED[4] | Pomodoro break phase running |
| LED[5] | Pomodoro alarm active |
| LED[7:6] | Setup field selected: 00=MIN, 01=HOUR, 10=DAY, 11=MON |

---

## External hardware

### MAX7219 8-digit 7-segment LED display


**Wiring:**

| MAX7219 pin | TinyTapeout pin | Description |
|-------------|-----------------|-------------|
| VCC | 3.3V | Power |
| GND | GND | Ground |
| DIN | uio[0] | SPI data |
| CS/LOAD | uio[1] | SPI chip select (active low) |
| CLK | uio[2] | SPI clock |


### Push buttons (×4)


| Button | ui pin | Function |
|--------|--------|----------|
| btn_left  | ui[0] | Enter/exit setup |
| btn_right | ui[1] | Cycle mode / cycle field |
| btn_up    | ui[2] | Increment / start pomodoro |
| btn_down  | ui[3] | Decrement / reset pomodoro |