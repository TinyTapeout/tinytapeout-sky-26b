<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The frequency divider consists of a counter module M chosen by the user as an input to the project. When the counter reaches the value M-1, a signal is enabled which will function as a clock of another 7-bit counter and each output of this counter can be used as a clock signal, each signal is divided by 2 in frequency. The pulse of the M module counter was enabled as output but it is not recommended to use it as clock signal, but it can be used in other applications.

## How to test

To test the design you only need to choose the M module with the switches on the dedicated inputs.

## External hardware

None external hardware needed
