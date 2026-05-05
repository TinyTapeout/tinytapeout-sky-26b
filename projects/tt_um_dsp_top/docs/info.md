## How it works

This DSP Core is a continuous streaming filter. It takes an 8-bit digital signal on `ui_in`, processes it through a configurable mathematical pipeline, and outputs the filtered 8-bit result on `uo_out`.

### Architecture Detail
The core utilizes a **4-tap Direct Form I FIR structure** combined with a recursive **Infinite Impulse Response (IIR)** feedback loop. By using 4 taps, the filter processes the current sample and three previous samples ($x[n]$ through $x[n-3]$), forming a third-order discrete-time filter.    

The design operates on a sample-by-sample basis without buffering, making it suitable for real-time streaming applications.

**The Configuration Cycle**    

The module must be configured immediately after powering on or resetting. The very first byte sent to `ui_in` after the reset pin (`rst_n`) goes high is captured as the configuration byte.

| Bits     | Parameter | Description |
| -------- | --------  | --------    |
| `[7:4]`  | Reserved  | Ignored by the core. |
| `[3:2]`  | Scale     | Right-shift divisor (0 to 3) to prevent the FIR sum from exceeding 8-bit limits. |
| `[1:0]`  | Mode      | Sets the operating topology (see below). |

**Operating Modes & Mathematical Architecture**    

Once configured, the core enters data-streaming mode. The internal architecture evaluates the following discrete-time difference equations based on the selected mode.  

(Note: In the equations below, $x[n]$ is the scaled input stream, and $y[n]$ is the output).  

•   **Mode 0 (Low-Pass FIR)**: Applies a smoothing filter using the coefficients `[1, 2, 2, 1]`.  

$$y[n] = x[n] + 2x[n-1] + 2x[n-2] + x[n-3]$$  

•   **Mode 1 (FIR + IIR)**: Combines the Low-Pass FIR with a recursive Infinite Impulse Response feedback loop to create a more complex frequency response.  

$$y[n] = \left( x[n] + 2x[n-1] + 2x[n-2] + x[n-3] \right) + \frac{y[n-1]}{4} + \frac{y[n-2]}{8}$$  

•   **Mode 2 (High-Pass FIR)**: Applies an edge-detecting/transient filter using alternating coefficients `[1, -1, 1, -1]`, scaled down by a factor of 2.  

$$y[n] = \frac{x[n] - x[n-1] + x[n-2] - x[n-3]}{2}$$  

•   **Mode 3 (Full DSP)**: Combines the Low-Pass FIR, High-Pass FIR, and the IIR feedback into a single, comprehensive datapath.  

$$y[n] = \text{FIR}_{lowpass} + \text{FIR}_{highpass} + \frac{y[n-1]}{4} + \frac{y[n-2]}{8}$$  

**Saturation Protection** To ensure hardware stability, all internal math is computed using 12-bit signed arithmetic. Before reaching `uo_out`, the final sum is checked. If it exceeds `255`, it clamps to `255`. If it drops below `0`, it clamps to `0`. This prevents catastrophic integer wrap-around (e.g., a value of 256 turning into 0) when processing real-world audio or sensor signals.  

The core operates in a streaming fashion, producing one output sample per clock cycle after an initial pipeline fill latency. The first few output samples may be invalid due to pipeline fill latency.

## How to test

To verify the DSP core in simulation or on hardware, the pipeline must first be initialized and configured before streaming data.

**Initialization Sequence:**  
1. **Reset**: Pull the `rst_n` pin LOW (0) to clear all internal memory registers.
2. **Enable**: Pull the `rst_n` pin HIGH (1) to wake the chip.
3. **Configure**: On the very first clock cycle after reset goes high, apply your chosen Configuration Byte to `ui_in`.
4. **Stream**: From the second clock cycle onward, apply your continuous streaming data to `ui_in`.

**Verification Test Vectors:** The following test cases can be used to mathematically verify every feature of the core. Because the pipeline takes a few cycles to fill, allow the output to ramp up before reading the steady-state result.  

| Feature Tested                    | Config Byte (Dec / Bin) | Streaming Input (`ui_in`)         | Expected Output (`uo_out`) |
| --------                          | -------- | --------       | --------                        |
| **Mode 0**: Low-Pass FIR          | `8` (`0000 1000`)       | Constant `50`                 | Ramps up to `75`   |
| **Mode 1**: FIR + IIR Feedback    | `9` (`0000 1001`)       | Constant `50`                 | Settles at `118`  |  
| **Mode 2**: High-Pass FIR         | `10` (`0000 1010`)      | Alternating `0` and `200`   | Alternates between `0` and `100`   |  
| **Mode 3**: Full DSP              | `11` (`0000 1011`)      | Constant `50`                 | Settles at `118`  |  
| **Scale Validation** (Max Gain)   | `3` (`0000 0011`)       | Constant `50`                 | Instantly saturates/clamps at `255` |  
| **Scale Validation** (Min Gain)   | `15` (`0000 1111`)      | Constant `50`                 | Settles at `58`  |  

**Note on High-Pass Testing (Mode 2)**: To test the edge-detection nature of **Mode 2**, a constant input will result in `0`. By providing an alternating input (e.g., a square wave of 0 and 200), the differencing logic will actively output the 100 amplitude.

## Physical Sign-off Stats

- **Process**: Skywater 130nm
- **Clock Frequency**: 50 MHz (Verified with +1.56ns Setup Slack)
- **Area Utilization**: 43.68%
- **Design Rule Check (DRC)**: Clean / 0 Violations
- **Layout vs Schematic (LVS)**: Clean / 0 Violations

## External hardware

This project does not require any external hardware.

The DSP core operates entirely on digital signals (`ui_in`, `uo_out`) and is designed for simulation or integration into a larger digital system.

For optional hardware testing, the following setups may be used:

- **Basic Verification**:  
  A microcontroller (e.g., Arduino Uno, Raspberry Pi Pico, or ESP32) can drive `ui_in` with test patterns and read `uo_out` for validation.
- **Real-World Signal Processing (Optional)**:  
  - Input: An 8-bit parallel ADC can be used to feed real analog signals (e.g., audio or sensors) into `ui_in`.  
  - Output: An 8-bit DAC or simple R-2R resistor ladder can be used to reconstruct the processed signal from `uo_out`.
