<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

You have 8 switches and 8 outputs. The first three switches determine the first 3 bit number, while the next three switches determine the second 3 bit number. the last two switches determine the mode for your ALU where 00 = addition, 10 = subtraction, 01 = multiplication. Note that the last mode (11), simply passes the switch, clock (10KHz), and reset signals to the output.

## How to test

Let's go through an example where you would add two 3 bit numbers together. Flip the first three switches to the following bits 101, and the next three switches to 100. Make sure that the last 2 switches remain in there 00 state. Your output pins should have a signal that corresponds to the bit sequence 00001001. Congratulations! you just performed 5 + 4 (=9) in binary. You can keep your initial 6 switches as they are (two 3 bit numbers), and simply switch the mode of operation to multiplication (01), or any other mode, and instantly observe the change in output.

## External hardware

This design interfaces its outputs using a 7 segment display, however the segments won't light up the result in decimal, rather it will light up the segments that are connected to the output pins which might initially seem incoherent. What I have done is that I assingned labels to the segments, and placed them on a sequence that starts with the segment connected to the first output pin, and all the way to the last. In this manner I can decode what might seem like an incoherent LED 7 segment display!
