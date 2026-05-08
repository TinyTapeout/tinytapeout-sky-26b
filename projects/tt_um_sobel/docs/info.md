<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a low-area streaming Sobel edge detection accelerator for grayscale image processing.
Pixels are streamed into the chip one by one through the input pins.  
The design uses two line buffers and a 3×3 sliding window to perform Sobel convolution in real time without storing the full image frame.
The Sobel operator calculates horizontal gradient (Gx) and vertical gradient (Gy):
Gx = -p00 + p02 - 2*p10 + 2*p12 - p20 + p22
Gy =  p00 + 2*p01 + p02 - p20 - 2*p21 - p22
The final edge strength is calculated as:
|Gx| + |Gy|
The output is clipped to 8-bit grayscale values (0–255) and streamed out directly.

## How to test

The design is verified using cocotb and a Python golden reference model.
Test patterns include:
- all-zero image
- all-255 image
- vertical edge detection
- horizontal edge detection
- checkerboard pattern
- two consecutive image frames
Each pixel is streamed into the DUT cycle-by-cycle, and the RTL output is compared against the Python Sobel model to ensure cycle-accurate functional correctness.

## External hardware

No external hardware is required.
The design can be tested using simulation only.
For physical silicon testing after tapeout, a standard Tiny Tapeout demo PCB can be used.
