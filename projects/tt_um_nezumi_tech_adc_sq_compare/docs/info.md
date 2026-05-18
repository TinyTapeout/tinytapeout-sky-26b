<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is an ultra-low-power controller designed to optimize an energy harvesting system for autonomous sensor nodes. 

Because the efficiency of the target energy harvesting circuitry depends heavily on environmental conditions, this ASIC dynamically evaluates two different proprietary harvesting configurations (referred to as Topology P and Topology S), determines which one yields more energy, and automatically switches to the optimal configuration.

**The Evaluation Sequence:**
1. **Topology P Test:** The ASIC outputs a 5ms pulse to switch the external circuit to Topology P. It waits for the system to stabilize, reads a baseline voltage via SPI (`val_A`), waits for a specific charging period, and reads the voltage again (`val_B`).
2. **Topology S Test:** After a discharge/margin delay, it switches to Topology S, waits for stabilization, reads the baseline voltage (`val_C`), waits for the charging period, and reads the voltage again (`val_D`).
3. **Performance Comparison:** The energy yield is evaluated using a proprietary metric based on the squared voltage differences. The ASIC compares the yields of Topology P and Topology S.
4. **Optimal Switching:** A 5ms pulse is output to permanently engage the winning topology until the next trigger event.

**Hardware Optimizations for ASIC:**
To fit within the strict area limits of a Tiny Tapeout tile, standard hardware multipliers (`*`) were completely eliminated. Instead, the mathematical evaluation is factored and performed using a custom-built, area-efficient 17-cycle "Shift & Add" sequential multiplier. Furthermore, to minimize dynamic power consumption and leakage current, the design is clocked at **32.768 kHz** (standard RTC frequency) and utilizes dynamic pin-strapping for timer configurations to keep register widths as small as possible.

## How to test

**1. Clock & Configuration:**
* Set the Tiny Tapeout system clock to **32.768 kHz**.
* Set the stabilization wait time via `ui_in[4:2]` (`cfg_stable`).
* Set the charging wait time via `ui_in[7:5]` (`cfg_charge`).
* *Note: The wait times are dynamically calculated as basic bit-shift operations (approx. $1 \times 2^N$ seconds). For example, setting the pins to `000` results in the shortest wait time, and `111` results in the maximum duration.*

**2. Execution:**
* Toggle the `ext_trigger` pin (`ui_in[0]`) to send a High pulse. This initiates the measurement sequence.
* You can monitor the internal state machine's progress via the 3-bit LED output on `uo_out[7:5]`.

**3. UART Logging (PC Debugging):**
* Connect a USB-to-Serial adapter to the `uart_tx_pin` (`uo_out[2]`). 
* Set your PC serial terminal to **1200 baud**, 8 data bits, no parity, 1 stop bit (1200-8-N-1).
* After the measurement sequence finishes, the ASIC will transmit a CSV-formatted string containing the raw Hex ADC values, the calculated yield differences, and the winner symbol (`>` or `<`). 
* Example Output: `000F,401F,+100F82E0,BD6D,A196,-0A551C85,>`

## External hardware

To fully utilize this project, the following external hardware is required:
* **LTC2450 ADC:** A 16-bit ultra-tiny SPI Analog-to-Digital Converter to measure the capacitor voltage. Connect to `spi_cs_n` (`uo_out[0]`), `spi_sck` (`uo_out[1]`), and `spi_sdo` (`ui_in[1]`).
* **USB-to-UART TTL Adapter:** For reading the serial data output to a PC.
* **32.768 kHz RTC Oscillator:** Required if deploying the chip standalone on a custom PCB (the Tiny Tapeout Commander Board can generate this clock internally during testing).
* **External Harvesting Circuitry:** Custom transducers, capacitors, and solid-state switches/relays controlled by the output pulses (`uo_out[3]` and `uo_out[4]`).
