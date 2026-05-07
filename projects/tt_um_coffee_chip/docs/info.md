## How it works

The **Coffee Chip** is a hardware-based color classifier designed to automate the quality control of coffee beans. Unlike software-based solutions, this project uses a high-speed digital state machine implemented in an ASIC to process signals directly from a color sensor.

### Core Architecture:
* **Frequency-to-Digital Conversion:** The chip receives a square wave from a TCS3200 sensor through the `ui[0]` pin. An internal 26-bit counter measures the number of pulses received within a specific time window (controlled by the system clock).
* **Finite State Machine (FSM):** The controller cycles through different color filters (Red and Green) by driving the sensor's `S2` and `S3` pins (`uo[2]` and `uo[3]`). 
* **Classification Logic:** Once the color values are captured, the chip compares the frequencies against pre-defined thresholds:
    * **Unripe:** High green component detected.
    * **Optimal:** High red component with low green interference.
    * **Overripe:** Low overall reflection (low frequency in both channels).
* **Dual Configuration Mode:**
    * **Static:** Uses physical pins (`ui[2]` and `ui[3]`) for quick calibration.
    * **Dynamic:** An integrated **UART Receiver** allows the user to update the `R_min` and `R_max` thresholds on-the-fly via the `ui[1]` pin, enabling fine-tuning for different coffee varieties without changing the hardware.

## How to test

To validate the Coffee Chip, follow these steps:

1.  **Initial Setup:**
    * Apply a stable **50MHz** clock to the `clk` pin.
    * Set `rst_n` to low for at least 10 clock cycles, then pull it high to start the system.
    * Ensure `ena` (Enable) is high.
2.  **Sensor Connection:**
    * Connect the **OUT** pin of a TCS3200 color sensor to `ui[0]`.
    * Connect `uo[0]` through `uo[3]` to the sensor's **S0, S1, S2,** and **S3** control pins.
3.  **Observation:**
    * Place a coffee bean in front of the sensor.
    * Check the output pins `uo[4]` (Green LED), `uo[5]` (Yellow/Red LED), or `uo[6]` (Red/Dark LED) to see the classification result.
    * Pin `uo[7]` will pulse high every time a full measurement cycle is completed.
4.  **UART Calibration (Optional):**
    * Set `ui[4]` (cfg_sel) to high.
    * Send a 16-bit value via UART (9600 baud) to the `ui[1]` pin to update the internal classification thresholds.

## External hardware

To fully utilize this project, the following external components are required:

* **Color Sensor:** TCS3200 (or compatible frequency-output color sensor).
* **LED Indicators:** 3 LEDs (Green, Yellow, Red) with current-limiting resistors connected to `uo[4]`, `uo[5]`, and `uo[6]`.
* **UART Bridge:** (Optional) A USB-to-TTL converter (like FTDI or CP2102) to send calibration data from a PC.
* **Pull-up/down Resistors:** Depending on your PCB setup for the configuration input pins.
