<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a 1-bit Vector-Matrix Multiplier (VMM) coprocessor designed to accelerate Binary Neural Networks (BNNs). Because a 1x1 Sky130 tile only gives us about 1,000 gates, fitting a full Neural Network is impossible. 

Instead, this design uses a Bottom-Up Time-Multiplexing architecture. The silicon contains 8 physical neurons. Each neuron has an 8-bit weight shift register and a 10-bit accumulator. The math is extremely cheap: multiplication is done using a single XNOR gate, and accumulation is done via a Popcount adder tree. 

There is no internal State Machine. The ASIC acts as a raw, ultra-fast math engine, while the looping, routing, and layer management are handled by a host processor in software.

## How to test

The chip expects to be driven by a host microcontroller running a C/C++ driver. The testing flow goes like this:

1. Pulse `rst_n` LOW to clear the 10-bit accumulators.
2. Load 8 bytes of binarized weights into the shift registers via `ui_in`.
3. Stream your binarized image pixels (e.g., 784 pixels for a 28x28 image) into `ui_in`. 
4. Pulse the compute pin (`uio_in[4]`). The internal edge detector ensures exactly one addition per byte.
5. Read the bottom 8 bits of the accumulator from `uo_out` and the top 2 bits from `uio_out[7:6]`.
6. Repeat the batch. The host software applies the folded Batch Norm thresholds.

## External hardware

To run this, you need a host microcontroller (Raspberry Pi Pico / RP2040, ESP32, etc.) or an FPGA SoC to hold the trained model weights, stream the 1-bit data, and compute the final Float32 Softmax output layer.
