<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

# Moving Average Low-Pass Filter (LPF) Documentation

## 1. Overview
This module implements a hardware-efficient **Moving Average Filter**, a type of Finite Impulse Response (FIR) filter where all coefficients are equal. It is designed specifically for low-area applications such as **Tiny Tapeout** or FPGA-based sensor conditioning.

The filter effectively removes high-frequency noise by averaging the last $N$ samples, acting as a low-pass filter with a Sinc-shaped frequency response.

## 2. Technical Specifications
| Parameter | Value |
| :--- | :--- |
| **Data Width** | 12-bit |
| **Tap Count (N)** | 8  |
| **Architecture** | Recursive Accumulator |
| **Multipliers** | 0 (Shift-only scaling) |
| **Latent Delay** | $(N-1)/2$ cycles |

## 3. Architecture & Logic
The design utilizes a **Recursive Summation** approach. Instead of summing all taps every cycle, the logic updates a running accumulator:

$$Sum_{n} = Sum_{n-1} + x[n] - x[n-N]$$

### Hardware Block Diagram


1. **Shift Register:** A delay line of $N$ registers holding the history of `data_in`.
2. **Subtracter:** Removes the oldest sample (`shift_reg[TAPS-1]`) from the current sum.
3. **Adder:** Adds the incoming `data_in` to the sum.
4. **Shifter:** Performs an arithmetic right shift (`>> 3`) to divide the 15-bit sum back down to 12-bit output.

## 4. Signal Descriptions
| Port | Direction | Width | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | 1 | System clock (Sampling clock) |
| `rst_n` | Input | 1 | Active-low asynchronous reset |
| `data_in` | Input | 12 | Unsigned/Signed input data |
| `data_out` | Output | 12 | Filtered output data |

## 5. Performance Characteristics
### Frequency Response
The filter provides deep nulls at integer multiples of $f_s / N$. For a 1kHz target, the sampling frequency and tap count should be tuned to align the first null with the primary noise component.

## How to test
### Use an ESP32, Arduino, or an STM32 to act as the "test bench."

Data Injection: Program the MCU to generate the noisy sine wave values mathematically (similar to the Verilog testbench) and send them to your hardware via a parallel bus or a fast protocol like SPI.

Clocking: Ensure the MCU and your filter share a common ground.

Logic Analyzer: Use a low-cost USB Logic Analyzer to capture the 12-bit output pins. Most logic analyzer software can "plot" the bus values as a waveform, allowing you to see the filtered sine wave on your PC screen.

## External hardware

MCU or FPGA to provide input and to collect the output. Output may be displayed through logic analyzer.
