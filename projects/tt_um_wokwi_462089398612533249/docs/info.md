<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is modified from the "Holidays" tiny tapeout example. The output will be true for only 2 possible inputs (1-7), inputs 8 and bidirectional input 1 provide one extra option for your holiday. 

## How to test

The project output should be True for the following inputs (in order: [i0, i1, i2, i3, i4, i5, i6, i7, io0]):
[0,1,1,0,0,1,0,1,0]; [1,0,0,1,1,0,1,1,0];[0,1,1,0,0,1,0,1,1]; [1,0,0,1,1,0,1,1,1];[0,1,1,0,0,1,0,0,1]; [1,0,0,1,1,0,1,0,1]

All other combinations of inputs *should* give False. 

## External hardware

One LED for output
