## How it works

The Load Priority Controller is a **6-state Finite State Machine (FSM)** implemented in pure digital logic. It manages power distribution across three prioritised loads based on external power-status signals — no firmware, no processor.

### Input signals

The system receives three flags from an external voltage comparator circuit connected to `ui_in[2:0]`:

- `ui_in[0]` — `undervoltage_flag`: power is critically low (highest priority signal)
- `ui_in[1]` — `medium_power_flag`: moderate power available
- `ui_in[2]` — `high_power_flag`: full power available

Internally, these three flags are encoded to a 2-bit `power_level` value used by the FSM:

| Flags | Internal `power_level` |
|---|---|
| undervoltage=1 (any) | `2'b01` — low, keep L1 only |
| medium=1, undervoltage=0 | `2'b10` — medium |
| high=1, undervoltage=0 | `2'b11` — full |
| no flags | `2'b01` — default low |

### Four built-in protection mechanisms

**1. 2-stage input synchronizer** — The comparator outputs are asynchronous. Two chained flip-flops clean the signal before the FSM sees it, eliminating metastability risk.

**2. Stability detection** — Power must remain stable for 20 consecutive clock cycles before the FSM escalates (adds loads). This prevents load hunting from rail noise or comparator chatter.

**3. WAIT states with delay timer** — Between each load-enable step, the FSM holds in a WAIT state for 50 clock cycles (= 1 µs at 50 MHz) before switching on the next load. This staggers inrush current and prevents voltage collapse.

**4. Stepped de-escalation** — When power drops, the FSM sheds loads one step at a time (L3→L2, then L2→L1), not an immediate full drop. This is gentler on inductive loads. De-escalation is immediate (no stability filter required).

### State machine

```
Reset (rst_n LOW) → L1_STATE

  IDLE ──(stable)──► L1_STATE
                        │
              medium/high stable
                        ▼
                    WAIT_L2 (50 cycles)
                        │
                        ▼
                    L2_STATE ◄──── power drop (immediate, stepped)
                        │                  ▲
                   high stable             │
                        ▼                  │
                    WAIT_L3 (50 cycles)    │
                        │                  │
                        ▼                  │
                    L3_STATE ──────────────┘
```

### States and outputs

| State | Condition to enter | `uo_out[2:0]` | Loads ON |
|---|---|---|---|
| IDLE | Power fully absent | `000` | None |
| L1_STATE | Reset default / low power | `001` | L1 only |
| WAIT_L2 | Medium/high stable, counting 50 cycles | `001` | L1 only (waiting) |
| L2_STATE | WAIT_L2 delay complete | `011` | L1 + L2 |
| WAIT_L3 | High power stable, counting 50 cycles | `011` | L1 + L2 (waiting) |
| L3_STATE | WAIT_L3 delay complete | `111` | All 3 loads |

The dedicated `clk` pin drives all state registers. The dedicated `rst_n` pin (active-LOW) performs an asynchronous reset to `L1_STATE`.

`undervoltage_flag` has absolute priority — it immediately maps to `power_level=2'b01`, bypassing stability gating and causing instant de-escalation.

## How to test

1. Hold `rst_n` LOW for at least 5 clock cycles, then release HIGH
2. Drive the clock continuously via the dedicated `clk` pin
3. Drive flags via `ui_in[2:0]` and observe `uo_out[2:0]`

**Important timing:** The FSM takes time to escalate due to the stability filter (20 cycles) and WAIT states (50 cycles). De-escalation is immediate.

| Test | `ui_in[2:0]` | Wait (cycles) | Expected `uo_out[2:0]` |
|---|---|---|---|
| Reset / no flags | `000` | 2 | `001` |
| Undervoltage only | `001` | 2 | `001` |
| Medium power | `010` | 80+ | `011` |
| High power | `100` | 130+ | `111` |
| Undervoltage + high | `101` | 2 | `001` (undervoltage wins) |
| Undervoltage + medium | `011` | 2 | `001` (undervoltage wins) |
| Power drop from L3 | set `001` after high | 10 | `011` (L3→L2 step) then `001` |

5. Test that asserting `ui_in = 0` during a WAIT state aborts the sequence and returns to `001`

## External hardware

**Voltage comparator circuit** — generates the three power-status flags:
- Connect power bus voltage through a resistive divider to an LM393/LM339 comparator
- Set three reference thresholds (e.g., 3.0 V, 3.5 V, 4.0 V for a 5 V system)
- Comparator outputs wire directly to `ui_in[0]`, `ui_in[1]`, `ui_in[2]`

**Load switching circuit** — switches physical loads using the enable outputs:
- `uo_out[0]` → gate driver → N-MOSFET → L1 (highest priority load)
- `uo_out[1]` → gate driver → N-MOSFET → L2
- `uo_out[2]` → gate driver → N-MOSFET → L3 (lowest priority load)

**LED indicators** — connect LEDs with series resistors (330 Ω) from each `uo_out[2:0]` pin to ground for visual verification during testing.

**Power-on reset** — use an RC network (10 kΩ + 10 µF) or supervisor IC (MCP101, DS1233) on `rst_n` to guarantee a clean reset pulse when the board powers up.
