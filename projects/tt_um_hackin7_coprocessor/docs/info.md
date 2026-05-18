<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

![Backpack logo](Backpack.png)

## How it works

A 640×480 VGA signal drives a TinyVGA PMOD. A 24×24 color bitmap ROM holds the backpack mascot (black cat, grey hat, brown pack, green bedroll, blue sweat drop, white details). It bounces around the screen on a black background. Tie `ui_in[0]` high to tile the logo, or `ui_in[1]` high to rotate palette indices on each wall bounce for a psychedelic effect.

## How to test

Connect a TinyVGA PMOD to the chip outputs. Apply a ~25.175 MHz clock. Hold reset low briefly, then release. You should see the backpack logo bouncing on a VGA monitor.

## External hardware

- [TinyVGA PMOD](https://tinytapeout.com/vmod/) or equivalent VGA DAC PMOD
- VGA monitor
