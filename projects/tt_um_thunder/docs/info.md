<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The circuit uses a 2-bit counter to generate a repeating sequence of states that act as timing steps. A combinational controller routes this sequence to the left lights, right lights, both, or neither based on the blinker input, and the decoders transform each state into a progressive 3-bit pattern that creates the sequential lighting effect (similar to the Ford Thunderbird).

## How to test

Apply reset (rst_n = 0) to initialize the counter.
Release reset (rst_n = 1).
Set blinker to each value (00, 01, 10, 11) and observe outputs:
00 → both outputs off
01 → left sequence active
10 → right sequence active
11 → both sequences active
Run the simulation for several clock cycles and confirm the outputs follow the expected progression

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
