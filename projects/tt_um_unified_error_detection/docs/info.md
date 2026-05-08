<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a high-reliability Combinational Error Detection Engine that combines two layers of data protection: Hamming(12,8) encoding and a CRC-8 checksum. Unlike serial designs, this engine provides zero-latency encoding by using pure XOR trees.

Encoding Layer 1 (Hamming): The 8-bit data from ui_in is instantly processed through a Hamming(12,8) XOR tree to generate 4 parity bits, creating a 12-bit protected codeword.

Encoding Layer 2 (CRC): The 12-bit Hamming word is simultaneously fed into a secondary XOR tree to calculate an 8-bit CRC-8 checksum (Polynomial 0x07).

Multiplexed Output: Because the final protected frame is 20 bits wide (12 bits Hamming + 8 bits CRC), it exceeds the 8-bit output limit. The design uses a 4-to-1 multiplexer controlled by uio_in[1:0] to allow a receiver to read the full 20-bit codeword in three 8-bit chunks.

## How to test

Testing is performed by setting the input data and toggling the selection bits to read the protected segments:

Input Data: Set your 8-bit test pattern on ui_in[7:0].

Read Segment 0 (MSB): Set uio_in[1:0] to 00. uo_out[3:0] will show the 4 most significant bits of the Hamming codeword (padded with leading zeros).

Read Segment 1 (Mid): Set uio_in[1:0] to 01. uo_out[7:0] will show the 8 least significant bits of the Hamming codeword.

Read Segment 2 (CRC): Set uio_in[1:0] to 10. uo_out[7:0] will show the 8-bit CRC checksum.

Bypass Check: Set uio_in[1:0] to 11. uo_out[7:0] should exactly match your ui_in value.
## External hardware
Microcontroller / FPGA: An external controller is needed to cycle through the select states (00, 01, 10) and capture the output to reconstruct the 20-bit protected frame.

Logic Analyzer: Highly recommended to verify that the transitions between select states result in the correct bit segments.
