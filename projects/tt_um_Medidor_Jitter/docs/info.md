## How it works

This project is a high-precision **Digital Jitter Meter** designed to characterize signal integrity in high-speed digital systems (up to 50 MHz). It operates by measuring the temporal displacement (jitter) of a target signal (`sig_in`) relative to a reference clock (`ref_clk`).

The core architecture consists of:
1.  **High-Speed Capture Engine**: Uses a 17-bit synchronous counter running at 50 MHz to sample the time difference between the reference clock and the signal transitions.
2.  **Arithmetic Unit**: Calculates the absolute error ($|t_{measured} - t_{ideal}|$) and compares it against a user-configurable tolerance window.
3.  **Register Bank**: Stores real-time statistics, including Maximum Jitter, Minimum Jitter, Total Samples, and an Error Counter (for picos exceeding tolerance).
4.  **Protocol FSM**: A robust Finite State Machine that handles a custom UART protocol for real-time configuration and data reporting.
5.  **Hardware Gating**: A physical `gate_pin` allows the user to pause/resume measurements instantly, ensuring data is only captured during valid test windows.

## How to test

To use the Jitter Meter, follow these steps:

1.  **Setup the Clock**: Provide a stable 50 MHz clock to the `clk` pin.
2.  **Configuration (UART)**: Connect a UART interface (115200 baud) to `rx_pin` and `tx_pin`.
3.  **Set Parameters**:
    *   Send `$` + `I` + `[2 bytes]` to set the **Ideal Period** (in clock cycles).
    *   Send `$` + `T` + `[2 bytes]` to set the **Tolerance Window**.
4.  **Enable Capture**: Set `gate_pin` to High (1) to begin analysis.
5.  **Input Signals**: Apply the signal to be measured on `sig_in`. For best results at high frequencies, provide the source clock on `ref_clk`.
6.  **Retrieve Data**:
    *   Send `$` + `M` to get the **Maximum Jitter**.
    *   Send `$` + `N` to get the **Minimum Jitter**.
    *   Send `$` + `G` to get the **Error Counter**.
    *   Send `$` + `R` to reset the statistical registers.

## External hardware

*   **Microcontroller (MCU)**: (e.g., ESP32, STM32, or Arduino) to send UART commands and generate the test signals.
*   **USB-to-UART Adapter**: To monitor results on a PC serial terminal.
*   **Logic Analyzer/Oscilloscope (Optional)**: To verify the `sig_in` jitter against the reported values.
*   **Signal Generator**: To inject controlled jitter into the `sig_in` pin for calibration.