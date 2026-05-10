# Reaction Game

A simple reaction time game implemented on the Tiny Tapeout Simon board.

## How it works

- Press the yellow button to start
- After a random delay (2–5 seconds), the green LED and buzzer indicate "GO"
- Press the blue button as fast as possible
- The reaction time is shown on the 2-digit display
- Early presses trigger an error state

## Inputs

- ui_in[3]: Yellow button (start)
- ui_in[2]: Blue button (reaction)

## Outputs

- uo_out[1]: Green LED
- uo_out[0]: Red LED
- uo_out[4]: Buzzer
- uo_out[5-6]: 7-segment digit select
- uio_out[0-6]: 7-segment segments
