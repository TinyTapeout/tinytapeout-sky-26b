<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design is a small multi-mode digital signal processing unit. It takes two 8-bit inputs (ui_in and uio_in) and processes them based on a 2-bit mode selected from their least significant bits.

The system also stores a previous output value (prev), which allows it to perform operations that depend on past data.

There are four modes:

Mode 00 – FIR Filter:
Performs a simple weighted sum of the current inputs and the previous output to smooth the signal.

Mode 01 – MAC (Multiply-Accumulate):
Multiplies the upper bits of the inputs and adds the result to the previous output.

Mode 10 – Edge Detection:
Detects changes in the input signal by comparing it with the previous value.

Mode 11 – Nonlinear Compression:
Reduces the signal magnitude by shifting it based on its highest active bit.

The output updates on each clock cycle depending on the selected mode.

## How to test
Go to the test directory:
cd test
Run the simulation:
make -B
After the simulation finishes, a waveform file named tb.vcd will be generated.
Open the waveform using GTKWave:
gtkwave tb.vcd

The testbench applies a reset, enables the design, and then cycles through all four modes while providing different input values. It also prints output values during simulation.

In the waveform viewer, check:

ui_in and uio_in for inputs
uo_out for output
clk and rst_n for timing
prev (internal signal) to see how past values affect behavior
to be updated
## External hardware

No external hardware is required for simulation.
