<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design implements a simple heat stress alert system using a digital pulse input as a proxy for temperature.

A pulse signal is applied to the input pin ui_in[0]. The design detects rising edges of this signal and counts the number of pulses over time. The pulse frequency represents temperature level.

Based on the accumulated pulse count, the system classifies the condition into four categories:
0 = Safe
1 = Warm
2 = High Risk
3 = Critical

The result is continuously updated and driven to the output pins uo_out.

## How to test

Run simulation using:
make -B

Open the waveform:
gtkwave tb.vcd

In the testbench, a pulse signal is generated on ui_in[0] to simulate a sensor or signal generator. As the number of pulses increases, the output state transitions from safe to critical.

You can observe:
- ui_in[0] as the pulse input
- internal counter increasing
- uo_out changing state

## External hardware

This design can be tested using a signal generator (FNIRSI) configured as a square wave between 0V and 3.3V connected to ui_in[0].

For real-world use, a temperature sensor can be connected through a microcontroller which converts temperature readings into pulse frequency.
