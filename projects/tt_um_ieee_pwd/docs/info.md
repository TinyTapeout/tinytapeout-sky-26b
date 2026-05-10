## How it works

This project implements a 2-bit PWM (Pulse Width Modulation) generator. It uses a free-running
2-bit counter that increments on every rising clock edge. The PWM output is driven high whenever
the counter value is less than the configured reference value (`ref_bits`), and low otherwise.
This produces a periodic signal with a duty cycle determined by `ref_bits`:

| ref_bits | Duty Cycle |
|----------|------------|
| 0        | 0%         |
| 1        | 25%        |
| 2        | 50%        |
| 3        | 75%        |

The counter and output are reset to 0 when the active-low reset signal (`rst_n`) is asserted.

## How to test

1. Assert `rst_n` low briefly to reset the module, then release it high.
2. Set `ui[1:0]` to the desired reference value (0–3) to select the duty cycle.
3. Observe the PWM output on `uo[0]` — it will toggle according to the duty cycle table above.
4. Change `ui[1:0]` at runtime to dynamically adjust the duty cycle.

> **Note:** `ui[3:2]` (state_bits) are connected to the submodule input but are not used
> in the current logic. Leave them at `0` unless repurposed in a future revision.

## External hardware

No external hardware is required. The PWM output on `uo[0]` can be connected directly to:
- An LED (with appropriate current-limiting resistor) to observe brightness changes with duty cycle
- A low-pass RC filter to produce an analog voltage proportional to the duty cycle
- A motor driver or other PWM-controlled peripheral