<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The PWM Generator takes a clock and generates a PWM by comparating the selected bus against a counter. Another input is added to determine the maximum resolution for the counter (meaning high resolution requires more bits for counting, which results in an overall lower frequency). By dinamically changing the counter max it is easy to generate the new signal. Also a DFF is added to the output of the comparator in order to synchronize the signal and reduce the possible glitches that can arise by changing values mid-run.

## How to test

To test, just connect the duty bus to the desired value at the output, while also setting the Maximum Bits in the bidirectional pins to the desired quantity (max - 111). After pressing restart the PWM should work as desired.

## External hardware

Some extra switches to set Bit selector[2:0]
