# Adaptive Traffic Light Controller with Emergency Override

## How it works

The design implements a **7-state Moore FSM** controlling a two-road intersection (N/S and E/W). Each road has three possible signal states — RED, YELLOW, GREEN — encoded as a 2-bit value on the output pins.

### Normal operation

```
NS_GREEN ──(timer)──► NS_YELLOW ──(timer)──► EW_GREEN ──(timer)──► EW_YELLOW ──(timer)──┐
    ▲                                                                                      │
    └──────────────────────────────────────────────────────────────────────────────────────┘
```

Each phase runs for a configurable number of clock cycles (default: green=30, yellow=5). The yellow phase acts as a safety guard — it is never skipped even under emergency preemption, unless the design is in a yellow phase when the emergency fires (in which case the remaining yellow cycles drain before EMRG_HOLD is entered).

### Adaptive green extension

If a vehicle sensor (`sensor_ns` or `sensor_ew`) remains asserted when fewer than `MIN_REMAINING` cycles are left in the active green phase, and no emergency is pending, the timer is extended by `EXTEND_STEP` cycles. This repeats up to a hard ceiling of `MAX_GREEN` cycles, preventing indefinite green monopolisation.

### Emergency override

When `emrg_ns` or `emrg_ew` is asserted, the pending flag is latched. At the end of the current phase the FSM transitions:

```
any state ──(emrg_pending)──► EMRG_HOLD (all RED, 3 cycles)
                                    │
                      ┌─────────────┴─────────────┐
                      ▼                           ▼
                 EMRG_NS (N/S green)        EMRG_EW (E/W green)
                      │                           │
                      └──────────► NS_GREEN / EW_GREEN (resume normal)
```

The `EMRG_HOLD` state guarantees an all-red gap before the emergency vehicle receives its green, preventing conflicting movements from vehicles already in the intersection. If both axes assert simultaneously, N/S receives priority; E/W is served on the next `EMRG_HOLD` cycle.

## How to test

### With the TT demo board

| `ui_in` bit | Switch | Action |
|-------------|--------|--------|
| 0 | SW0 | Toggle N/S vehicle sensor |
| 1 | SW1 | Toggle E/W vehicle sensor |
| 2 | SW2 | Assert N/S emergency |
| 3 | SW3 | Assert E/W emergency |

**Reading the outputs:**

| `uo_out` bits | Meaning |
|--------------|---------|
| [1:0] = 01 | N/S GREEN |
| [1:0] = 10 | N/S YELLOW |
| [1:0] = 00 | N/S RED |
| [3:2] = 01 | E/W GREEN |
| [3:2] = 10 | E/W YELLOW |
| [3:2] = 00 | E/W RED |
| [4] = 1 | Emergency active |
| [7:5] | FSM state (0–6) |

**LED mapping suggestion:** Wire uo_out[1:0] to a green/yellow LED pair for N/S and uo_out[3:2] to a green/yellow LED pair for E/W. Red is implied when both LEDs are off.

### Timing at 10 kHz clock (default demo board speed)

| Parameter | Cycles | Real time |
|-----------|--------|-----------|
| GREEN_TIME | 30 | 3 ms |
| YELLOW_TIME | 5 | 0.5 ms |
| EMRG_TIME | 20 | 2 ms |

For realistic intersection timing at 10 kHz, set `GREEN_TIME = 300_000` (30 s) in the top-level parameters and resynthesize.

### Automated tests

Run with cocotb:

```bash
cd test
make
```

Six test cases are included covering: reset state, normal rotation, emergency preemption, simultaneous dual-axis emergency, adaptive extension, and all-red guarantee during EMRG_HOLD.

## Safety properties

This design was written with verifiable safety invariants in mind:

1. **Mutual exclusion**: N/S and E/W can never simultaneously be GREEN (enforced by Moore output table — only one axis is ever assigned `SIG_GREEN` per state).
2. **All-red gap**: `EMRG_HOLD` guarantees at least `HOLD_TIME` cycles of all-red before any emergency green, preventing intersection clearing violations.
3. **No starvation**: The adaptive extension has a hard ceiling (`MAX_GREEN`), and emergency requests are latched and always eventually serviced.
4. **Reset safety**: On `rst_n` assertion, all outputs default to RED via the sequential reset path.

These invariants can be formally verified with tools such as SymbiYosys / Yosys `smtbmc`.
