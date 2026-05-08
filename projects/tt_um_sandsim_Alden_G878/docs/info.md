<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This projects works in a 36x48 grid, where each grid has a binary state of either filled or empty.
The physics engine iterates through the rows of sand and a compute kernel calculates the next state for each pair of continuous rows.

## How to test

This project can be tested by attaching the TinyVGA PMOD board to the UO port (and a connected VGA monitor), and the TinyQSPI PMOD board to the UIO port. Then, by driving any of the UI pins high, a single grain of sand will be generated in the top line.

## External hardware

1x TinyVGA
1x TinyQSPI
