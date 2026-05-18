<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Tiny Tapeout Project: Animation

Simple TT project built on top of https://wokwi.com/projects/463888761448550401.
Allows to select two static designs or an animation.

## How it works
8-segment display will change based on `SEL0`, `SEL1` values:
* `00`: Letter K
* `01`: Letter A
* `10` or `11`: Animated "snake" moving around the perimeter, and through the middle bar to the dot.

The animation runs from a 3-bit counter driven by the clock. 

## How to test
Validate the display output for all combinations of the first two input pins.
