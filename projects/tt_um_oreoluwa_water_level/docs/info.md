<!---

This file is used to generate your project datasheet & GitHub pages.

You can use markdown formatting here.

-->

## About this project

This design was created as part of the **IEEE Division 1 Open Silicon Initiative** in Lagos, Nigeria, headed by **Emmanuel Innocent**. The initiative trains participants in modern digital integrated-circuit design — from RTL and FSM modelling through to a hardened ASIC layout — and partners with [Tiny Tapeout](https://tinytapeout.com) to provide a free silicon tapeout opportunity for completed projects.

Without the programme there would be no realistic path for a student in Lagos to get a custom design fabricated on real silicon; the combination of the Open Silicon Initiative's instruction and Tiny Tapeout's shared shuttle makes that possible. This Water Level Controller is one of the projects produced through the programme.

## How it works

This design is a 4-state finite-state machine that automatically controls a water pump from two binary level sensors.

The two sensors are bundled into a 2-bit `sensor_bus = {s1_high, s0_low}`:

| `sensor_bus` | Meaning |
|---|---|
| `00` | Tank empty (water below low sensor) |
| `01` | Mid-level (water above low, below high) |
| `11` | Tank full (water above both sensors) |
| `10` | Impossible (high wet, low dry) -> safety fault |

The FSM has four states:

- **IDLE** (`00`) - pump off, waiting. If the tank reads empty (`00`) it moves to FILLING. If the impossible pattern (`10`) appears it moves to ERROR.
- **FILLING** (`01`) - pump on. Stays here while the tank is empty or mid-level. Goes to FULL when both sensors are wet, or to ERROR on the impossible pattern.
- **FULL** (`10`) - pump off. Stays full until the tank drains back to empty (then re-enters FILLING) or the impossible pattern appears (ERROR).
- **ERROR** (`11`) - pump off and `error_flag` raised. Stays here until both sensors clear to `00`, then returns to IDLE.

`reset_n` is an active-low asynchronous reset that forces the FSM into IDLE.

## How to test

Drive the two sensor inputs on `ui_in[1:0]` and watch the outputs on `uo_out`:

| Pin | Direction | Function |
|---|---|---|
| `ui_in[0]` | in | `s0_low` - low-level sensor |
| `ui_in[1]` | in | `s1_high` - high-level sensor |
| `uo_out[0]` | out | `pump_out` (1 = pump ON) |
| `uo_out[1]` | out | `error_flag` (1 = impossible sensor combo) |
| `uo_out[3:2]` | out | Current FSM state (`00` IDLE, `01` FILLING, `10` FULL, `11` ERROR) |

A typical test sequence:

1. Apply reset (`rst_n = 0`) for several clocks, then release. State should be `00` (IDLE), pump off.
2. Drive `ui_in = 2'b00` (empty). After one clock, state -> `01` (FILLING) and `pump_out = 1`.
3. Drive `ui_in = 2'b01` (mid). State stays at FILLING, pump still on.
4. Drive `ui_in = 2'b11` (full). State -> `10` (FULL), pump off.
5. Drive `ui_in = 2'b00` again. State -> FILLING, pump on (controller refills).
6. From any state, drive `ui_in = 2'b10`. State -> `11` (ERROR), `error_flag = 1`, pump off.
7. Drive `ui_in = 2'b00`. ERROR clears back toward IDLE / FILLING and `error_flag` drops.

The cocotb tests in `test/test.py` cover all of these transitions automatically.

## External hardware

- Two level sensors (float switches, capacitive probes, optical sensors, etc.) wired to `ui_in[0]` (low) and `ui_in[1]` (high). Pull-downs recommended so a disconnected sensor reads 0.
- A pump driver / relay / MOSFET driven by `uo_out[0]`. The chip pin cannot drive a pump directly - use a transistor or relay module.
- Optional: an LED on `uo_out[1]` to indicate the error state, and two LEDs on `uo_out[3:2]` to display the FSM state.
