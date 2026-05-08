<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The design receives 8-bit data via an SPI slave (Mode 0, CPOL=0/CPHA=0) and displays the received byte as a 2-digit hexadecimal value on a multiplexed 3-digit 7-segment display. The SPI signals (sck, cs_n, mosi) are synchronized to the system clock through double flip-flop chains to avoid metastability. On each rising edge of SCK, one bit is shifted into a receive register; after 8 bits, the byte is latched into `rx_data` and a one-cycle `rx_valid` pulse is generated. The display controller time-multiplexes the three digits at ~333 Hz, decoding each nibble into active-low segment patterns. The left digit is always 0, the center digit shows the high nibble, and the right digit shows the low nibble.

## How to test

Connect an SPI master to uio[0] (sck), uio[1] (cs_n), and uio[2] (mosi). Optionally read MISO from uio[3] and load the byte to transmit on ui_in[7:0]. After sending a byte, the 7-segment outputs (uo_out[6:0] = seg, uo_out[7] = dp) and anode controls (uio[5:7] = an[0:2]) will display the received value in hex. The `rx_valid` flag on uio[4] pulses high for one clock cycle when a byte is received. For simulation, run `make` in the `test/` directory — the cocotb testbench drives a software SPI master and verifies the decoded segment patterns for multiple test bytes.

## External hardware

- SPI master (microcontroller, FPGA, or similar) connected to sck, cs_n, and mosi.
- 3-digit common-anode 7-segment display connected to seg[6:0], dp, and an[2:0] (active low).
