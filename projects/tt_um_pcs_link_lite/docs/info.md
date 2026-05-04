<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The PCS Link Controller LITE is a compact, area-optimized Physical Coding Sublayer (PCS) block designed to mimic high-speed serial communication. It implements an 8b/10b encoding/decoding pipeline, asynchronous clock domain crossing (CDC) FIFOs, and a Link Training and Status State Machine (LTSSM) arbiter that manages a half-duplex, bidirectional shared data bus. The system operates across two asynchronous clock domains: a faster 66 MHz Link Clock for higher-speed serial transmission and a slower System Clock (10 MHz) for parallel data handling.

## How to test

Before testing, the user needs to first program the RP2040 using pcs_lite_clocks.py to configure the 10 MHz system clock.

Bidirectional data test - transmit and check user input/random data on TX, switch mode to RX, receive and check user input/random data on RX.
- With demoboard and FPGA: with chip A on demoboard and chip B on FPGA, the user can input data to the transmitter chip using switches and the receiver chip can visually output the received data with on-board LEDs
- With demoboard and cocotb script: test.py cocotb script controls the demoboard to transmit/receive random data

## External hardware

Optional: FPGA for bidirectional data test between two chips.
