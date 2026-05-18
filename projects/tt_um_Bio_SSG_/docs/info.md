# Bio Sinusoidal Signal Generator (Bio_SSG)

## Overview
The Bio Sinusoidal Signal Generator (Bio_SSG) is a fully synthesizable, mixed-signal, ultra-low-voltage (ULV) sine wave generator designed primarily with digital standard cells. The project generates a precise analog sinusoidal signal at approximately ~20-25 kHz using a combination of a Direct Digital Synthesizer (DDS), a standard-cell-based differential DAC, a continuous-time low-pass filter, and an ultra-low-voltage Operational Transconductance Amplifier (OTA). 

This design demonstrates the viability of utilizing automated digital logic design tools to create high-performance analog and mixed-signal functional blocks.

## How it works
The signal path is divided into three main stages:

1. **Direct Digital Synthesis**: A 7-bit digital counter steps through a 128-point Lookup Table (LUT) populated with the digital representations of a sine wave. Driven by a 2.56 MHz clock, the counter continuously cycles through the LUT to establish the base frequency of the sine wave (approx. 20-25 kHz).
2. **Differential Buffer Block & DAC**: The digital values from the DDS are passed into a differential Digital-to-Analog Converter (DAC) constructed entirely using arrays of standard digital buffers. This block outputs a pseudo-differential stepped sinusoidal analog voltage.
3. **2nd-Order Low-Pass Filter**: To smooth the stepped DAC output, the signal passes through a fully integrated 2nd-order continuous-time low-pass filter. Taking inspiration from modern standard-cell-based analog flows, the filter replaces traditional passive transconductors with logic inverters biased in their linear regions. **All filtering capacitors are fully integrated on-chip.**
4. **Ultra-Low-Voltage OTAs**: The filtered signal is buffered and amplified by a pair of standard-cell-based OTAs operating at a `VDDA` of 1.2V. These OTAs utilize a novel differential-to-single-ended converter topology with an auxiliary standard-cell-based error amplifier. This local feedback loop significantly improves the Common-Mode Rejection Ratio (CMRR) and provides high robustness against Process, Voltage, and Temperature (PVT) variations.

## How to test
To properly test the Bio_SSG, both the digital and analog domains must be carefully configured with specific voltage references.

1. **Power Supply & References**:
   * Supply the standard digital logic power (1.8V) to the digital domain.
   * Provide **1.2V** to the main analog power domain (`VDDA`).
   * Provide **0.65V** to the DAC power pin (`ua[0]: vdd_dac`).
   * Provide an analog ground / reference voltage of **0.6V** (VDD/2) to the reference pins (`ua[1]: ref_kokko`, `ua[2]: ref2`, and `ua[3]: ref1`).
2. **Control Signals**: Hold the reset pin (`rst_n`) low to reset the DDS counter, then pull it high alongside the enable pin (`ena`) to start signal generation.
3. **Observation**: Use an oscilloscope to probe the analog differential output pins (`ua[5]: out1` and `ua[4]: out2`). You should observe smooth, continuous-time sinusoidal waves at ~25 kHz. 

## External hardware
*   **Oscilloscope**: A standard oscilloscope to verify the analog differential sinusoidal outputs on `ua[4]` and `ua[5]`.
*   **Precision Power Supplies / LDOs**: Clean external voltage sources to generate the specific analog voltages required: `1.2V` (VDDA), `0.65V` (DAC), and `0.6V` (Analog References). No external capacitors are required as they are fully integrated on the die.
