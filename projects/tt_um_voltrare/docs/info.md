<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a 8-bit, 8-taps Finite Impulse Response (FIR) Filter. Inputs and outputs are 8-bit parallel interface. Filter coefficients can be loaded in fixed point Q1.7 format, when the `mode` pin is asserted high.

The design will generate clocks to external ADC and DAC ICs. 

## How to test

This project has been verified using an FPGA. An external ADC and DAC IC with 8 bit parallel interface is needed. A microcontroller is needed to load the coefficients before starting the filter operation.

## External hardware

ADC08100 Datasheet:
https://www.ti.com/lit/ds/symlink/adc08100.pdf?ts=1774533804655 

AD9708 Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/ad9708.pdf 