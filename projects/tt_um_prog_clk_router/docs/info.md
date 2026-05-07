<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The design implements an 8-channel programmable clock router.

A 16-bit internal counter runs on the system clock and generates multiple divided clock signals. Each output channel is connected to a configuration register that selects one of the counter bits, effectively choosing a clock division ratio.

The user programs each output by:
1. Selecting the output channel using ui[2:0]
2. Providing the desired division ratio using ui[6:3]
3. Triggering a write using ui[7]

Each output then continuously generates the selected divided clock signal independently.

## How to test

1. Apply reset to initialize the system.
2. Select an output channel using ui[2:0].
3. Set a division value (0–15) on ui[6:3].
4. Pulse ui[7] high to store the configuration.
5. Observe the corresponding uo_out pin toggling at a divided clock frequency.

Repeat for different channels with different division values and verify that each output runs at a different frequency.

## External hardware

No external hardware is required. Outputs can be observed directly using a logic analyzer, oscilloscope, or FPGA/Vivado waveform simulation.
