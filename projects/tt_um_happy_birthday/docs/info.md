# Happy Birthday Detector

## How it works

This project implements a **Happy Birthday Detector** — a digital system that continuously
transmits a looping serial bit stream and detects a hardcoded 9-bit birthday pattern within it.

### Birthday Pattern

The birthday date is **March 7 (03/07/2005)**:

| Field | Value | Binary |
|-------|-------|--------|
| Month | 3 | `0011` |
| Date  | 7 | `00111` |
| **Pattern** | — | **`001100111`** |

### System Architecture

The design has five sub-modules integrated into `project.v`:

**TX Generator** — A 10-bit counter (0–1023) that produces data words, incrementing only after
the serializer finishes sending the previous word to prevent overlap.

**TX Serializer** — Takes each 10-bit word and transmits it one bit per clock cycle, LSB first,
producing a continuous serial stream at the 10 kHz system clock rate.

**RX Detector** — A 9-bit shift register that captures incoming serial bits and compares the
last 9 bits to the birthday pattern every clock cycle, asserting a match pulse for one cycle
whenever the pattern is found.

**Hit Counter** — Accumulates match pulses. Every 10,000 clock cycles (1 second at 10 kHz),
it latches the running count, resets it, and pulses `hit_count_valid` to notify the display.

**7-Segment Driver** — Converts the latched 8-bit binary count into two active-low 7-segment
display codes (tens digit and units digit), supporting display of values 0–99.

### Timing

| Parameter | Value |
|-----------|-------|
| Clock frequency | 10 kHz |
| Bits per frame | 10 |
| Frame rate | 1 kHz |
| Display update | Every 1 s (10,000 clocks) |
| Pattern length | 9 bits |

### Pin Mapping

| Pin | Direction | Description |
|-----|-----------|-------------|
| `ui_in[0]` | Input | `TX_ENA_N` — active-low transmit enable |
| `uo_out[6:0]` | Output | Units digit 7-segment code (active low, gfedcba) |
| `uo_out[7]` | Output | `HIT_COUNT_VALID` — pulses HIGH each second |
| `uio_out[6:0]` | Output | Tens digit 7-segment code (active low, gfedcba) |

## How to test

1. **Apply reset**: Hold `rst_n` LOW for at least 10 clock cycles, then release HIGH.
   All internal counters and state machines will initialise to zero.

2. **Enable transmission**: Drive `ui_in[0]` (TX_ENA_N) LOW. The serial bit stream
   begins immediately on the next clock cycle.

3. **Wait for display update**: After 10,000 clock cycles (1 second at 10 kHz),
   `uo_out[7]` (HIT_COUNT_VALID) pulses HIGH for one cycle. At this moment,
   `uo_out[6:0]` holds the units digit and `uio_out[6:0]` holds the tens digit
   of the birthday hit count for that second.

4. **Read the 7-segment display**: Decode `uo_out[6:0]` for the units digit and
   `uio_out[6:0]` for the tens digit. Both use active-low encoding: `1000000` = 0,
   `1111001` = 1, `0100100` = 2, and so on.

5. **Verify non-zero count**: The birthday pattern `001100111` (decimal 103) falls
   within the 0–1023 counter range, so the detector finds at least one match per
   counter cycle. The display should show a non-zero value after the first second.

6. **Test disable**: Drive `ui_in[0]` HIGH to stop transmission. The display will
   show 0 hits/sec after the next update interval.

7. **Test reset recovery**: Assert `rst_n` LOW mid-operation, then release. The system
   restarts cleanly and resumes display updates after another 1-second interval.

### 7-Segment Encoding Reference (active low, gfedcba)

| Digit | Code |
|-------|------|
| 0 | `1000000` |
| 1 | `1111001` |
| 2 | `0100100` |
| 3 | `0110000` |
| 4 | `0011001` |
| 5 | `0010010` |
| 6 | `0000010` |
| 7 | `1111000` |
| 8 | `0000000` |
| 9 | `0010000` |
