<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
TINY_NN implements a small two-layer fully-connected neural network in hardware to classify whether a 4-bit (x, y) coordinate lies inside or outside a circle. The circle is (x-0.5)^2 + (y+0.25)^2 = (0.5)^2

Network architecture: The network has two layers. Layer 0 is a 2-input, 6-neuron linear layer. Its outputs pass through a ReLU activation. Layer 1 is a 6-input, 1-neuron linear layer. All weights and biases are hardcoded. The final output bit is the sign of the single layer-1 output node.

Fixed-point arithmetic: All arithmetic uses 4-bit signed fixed-point values. The mul module performs saturating multiply-accumulate: products are scaled by right-shifting 2 bits. All computation overflow is clamped to min/max values, keeping all intermediate values in range without needing wider datapaths.

Control flow: A 6-state FSM sequences the computation (idle, layer0, layer1, etc), orchestrating the inputs and outputs of each layer and asserting done once everything is completed.

The frequency requirements of the clock for this design is 25 MHz.  

## How to test

Reset: Hold ui_in[7] to reset all registers and the FSM (active low).

Load X coordinate: Set your 4-bit X value on the switches, then pulse ui_in[5] high.

Load Y coordinate: Set your 4-bit Y value on the switches, then pulse ui_in[4] high.

Run inference: Pulse ui_in[6] to start the inference. The FSM will sequence through both MAC layers automatically.

Read result: Once valid goes high, read inside_circle (both on the LED). A 1 means the point is classified as inside the circle; a 0 means outside.

To run another inference, assert rst_n (ui_in[7]). Note that the switch inputs are signed in Q2.1, with 1 sign-bit (ui_in[3]), 2 int bits (ui_in[2:1]), and 1 fractional bit (ui_in[0]). 

## External hardware
4 switches — sets the 4-bit coordinate value before each load (ui_in[3:0])

4 push buttons — connected to ui_in[7:4]: rst_n (ui_in[7]), start (ui_in[6]), load X (ui_in[5]), load Y (ui_in[4])

2 LEDs — one for valid (inference complete, uo[0]) and one for inside_circle (classification result, uo[1] - on if inside, off if outside)
