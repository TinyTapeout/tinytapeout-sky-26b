# UART-Controlled Frequency Meter & Timer

## How it works
This project integrates three high-precision measurement tools into a single 1x1 ASIC tile, specifically optimized for the Sky130 process:

1.  **Programmable Timer:** A countdown timer set via UART in `HH:MM:SS` format. It uses a cascaded counter architecture to minimize area usage.
2.  **Frequency Meter:** Measures the frequency of an external signal on `ui_in[1]` using a precise 1-second gate window.
3.  **Pulse Counter:** Records the total number of falling edges detected during the measurement period.

The entire system is managed via a UART interface operating at **115200 baud** (8N1).

## Inputs/Outputs Detail
| Pin | Label | Direction | Description |
|-----|-------|-----------|-------------|
| ui[0] | RX | Input | UART Data Input. Receives ASCII commands. |
| ui[1] | Signal | Input | The external signal to be measured (Frequency/Pulses). |
| uo[0] | TX | Output | UART Data Output. Transmits telemetry frames. |
| uo[1] | Frame OK| Output | Generates a 1-clock cycle pulse when a full telemetry frame is sent. |
| uo[2] | Active | Output | HIGH when the timer is running and measurement gates are open. |

## UART Command Set
- `Hhh:mm:ss`: Load timer value (e.g., `H00:05:00` for 5 minutes).
- `I`: **Initialize** (Starts the countdown and measurement).
- `R`: **Reset** (Stops the system and clears all registers).
- `E`: **Enable** telemetry (Starts periodic data reporting).
- `Y`: **Stop** telemetry (Disables data reporting).

## Telemetry Data Format
When enabled, the chip transmits a 13-byte frame at 115200 baud:
`$ [Count_H] [Count_L] / [Freq_H] [Freq_L] / [Status] / [#] / [\n] [\r]`

- **Status Byte:** - Bit 2: System Active.
    - Bit 1: Timer Finished.
    - Bit 0: UART Command Error.

## How to test
1. Connect a USB-to-UART bridge to `ui_in[0]` and `uo_out[0]`.
2. Connect a signal generator or a pulse source to `ui_in[1]`.
3. Use a serial terminal at **115200 baud**.
4. Send `H00:00:10` to set a 10-second window.
5. Send `E` then `I`. You will see data frames appearing in your terminal.