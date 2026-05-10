<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

TTNN (Tiny Tapeout Neural Network) is a pre-trained Binary Neural Network (BNN) hardened in silicon. Network was trained on sklearn digit data set (8x8 BW with threshold > 4 for BW separation). Python model holds a test data accuracy of 70% (low due to size constraints of 1x2 tile area).

Network ingests a 64 bit image (8x8) and produces a 4-bit prediction (0 to 9 valid values). It consists of 18 neurons (L0 -> 8 neurons, L1 -> 10 neurons). 


## How to test

Use `in_en` and `in_data` to serially load in image data in row major order. When `in_en` is disabled, `out_ready` goes high and `out_prediction` will output the network's prediction for the latched image (network is combinational for minimal area). Reset (`rst_n`) is synchronous and active low.

## External hardware

No external hardware necessary!