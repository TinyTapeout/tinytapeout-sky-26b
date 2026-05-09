<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This is a trace compressor, originally developed for an FPGA. It locally compresses signal data from the chip in real time, to allow for far more data to be saved to memory then if stored raw.  

Why is this useful?

Traces generate truly tremendous amounts of data. Just one 16 bit bus at 100Mhz is 16*100M = 1.6 billion bits per second = 200MB per second. That's just one bus!
There is no transmission protocal fast enough for reading out the traces of even part of a full system, and memory is expensive. So, working around the limitations, if we locally compress the data, we can fit signifigantly more in the same memory, for later reading out through a chip's existing data transmission protocol. Luckily, digital traces are often fairly predictable, and thus easily compressed.  Think of a counter, or a signal that stays the same for long periods of time.

Compression Strategies:

Normal RLE (Run-Length Encoding Mode) (CODE 2'b00): Long runs of the same number. Replace four packets 9,9,9,9 with {9,RLE3} (9, then held for 3 cycles).  2 bits packet type, 8 bits run length

Delta RLE (CODE 2'b01): Mode Long runs of the same delta (like a counter). Replace four packets 1,2,3,4 with {1,2,DELTARLE2} (1,2, then same delta for 2 cycles).  2 bits packet type, 8 bits run length

Small Delta (CODE 2'b10): Many signals change frequently and unpredictably but only by a small amount (like any analog to digital readings). This can be saved in less data then RAW by saving a small delta instead of the full value.  2 bits packet type, 5 bits signed delta

RAW (CODE 2'b11): if data changes too much to properly compress: don’t compress it! Delta magnitudes are large Run lengths are short Entropy is high.  2 bits packet type, 8 raw data

## How to test

First, reset, then assert start (uio_in[3]) as 1 (needs to be held entire time) and put in your input data into ui_in[7:0].  The next cycle, ui_out[7:0] will have either the raw data, run length, or delta, while uio_out[1:0] will have the packet code, and uio_out[2] will have save, which is high if you should save the data, and low if you should ignore the data.  Run Length and DELTARLE do not send packets unless they either are interrupted by a value that does not fit, or would overflow, so you should expect long runs of save being low while RLE or DELTARLE are happening.

## Pins
uio_in[3] = start (assert while operating.  when unasserted, allow for two more cycle to read out stored values)\
ui_in[7:0] = input data to be compressed\
uio_out[2] = save (if high, save output packet code and data to memory)\
uio_out[1:0] = output packet code\
ui_out[7:0] = output data

Unused: uio_in[7:4], uio_in[2:0]
All unusued uio pins are configured as inputs.

## External hardware

This will be likely tested using the Basys3 FPGA board, to provide and take in data.  I will likely post a verilog file to provide inputs and save outputs to be transferred off chip.
