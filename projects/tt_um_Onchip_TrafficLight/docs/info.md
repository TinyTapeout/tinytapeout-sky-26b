<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a Finite State Machine (FSM) that utilizes an instantiated module of the "CLK Frequency Divider" by Ramón Sarmiento to perform internal counting for a traffic light control system.

## How to test

Set the first input to "1" and await the activation of the Red light. It will remain active for 30 seconds, provided the correct frequency is employed. Afterward, it will transition to the Green state within 3 seconds, remaining in this state for an additional 20 seconds. Finally, it will transition back to the Red state over the course of 3 seconds.

## External hardware

Three Different Color LEDs (Optional)
