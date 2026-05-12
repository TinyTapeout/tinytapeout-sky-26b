<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is an 8-bit, 8-tap Finite Impulse Response (FIR) filter. The inputs and outputs use an 8-bit parallel interface. Filter coefficients are represented in fixed-point Q1.7 format and can be computed using DSP software tools such as MATLAB or Scilab. A supporting MCU is required for clock generation and coefficient loading.

### Coefficient Loading Mode

When the `mode` pin is asserted high, the design enters coefficient loading mode. In this mode, the coefficient data shall be presented at `ui[7:0]` by the MCU. On each rising edge of the clock, the input data is shifted into the internal coefficient register chain.

Successive clock cycles continue shifting coefficients into the filter. Since the filter contains 8 taps, a maximum of 8 coefficients can be stored. If more than 8 clock cycles occur while in coefficient loading mode, the earliest coefficient shifted in will be overwritten and lost.

The first coefficient shifted into the filter corresponds to the first tap coefficient, `h[0]`.

### Normal Operation Mode

When the `mode` pin is asserted low, the design enters normal operation mode. In this mode, the FIR filter processes incoming input samples using the currently loaded coefficients.

### Timing and Sampling Rate

The input clock determines the sampling rate of the filter. Each output sample requires 8 clock cycles. Therefore, the effective sampling frequency is input clock frequency divided by 8.

The design will generate clock signals to external ADC and DAC ICs. The ADC08100 and AD9708 is chosen for their 8-bit parallel interface.

## How to test

A PCB containing all the supporting ICs will be designed. The PCB will be published on the [dsp_fir_pcb](https://github.com/seapanda0/dsp_fir_pcb) repository.

This project has been verified with FPGA testing.

## External hardware

ADC08100 Datasheet:
https://www.ti.com/lit/ds/symlink/adc08100.pdf?ts=1774533804655 

AD9708 Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/ad9708.pdf 