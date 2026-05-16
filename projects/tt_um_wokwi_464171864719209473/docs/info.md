<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This chips takes 7 entry + clock to create a LED animation using 8 LEDs on the output.

## How to test

You just need to set values as the fallowed:

  Inputs:
  - CLK — advances the sequence on each rising edge
  - RST — resets to pattern 0
  - EN — enable (pauses the sequence when low)
  - DIR — direction (forward / reverse)
  - MODE[2:0] — selects one of up to 8 pattern sets (chase, bounce, blink, etc.)
  - SPEED[1:0] — clock divider selection (full speed, /2, /4, /8)

  Outputs:
  - OUT[7:0] — 8-bit pattern driving LEDs or downstream logic

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
