<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The PCS Link Controller LITE is a compact, area-optimized Physical Coding Sublayer (PCS) block designed to mimic high-speed serial communication. It implements an 8b/10b encoding/decoding pipeline, asynchronous clock domain crossing (CDC) FIFOs, and a Link Training and Status State Machine (LTSSM) arbiter that manages a half-duplex, bidirectional shared data bus. The system operates across two asynchronous clock domains: a faster 66 MHz Link Clock for higher-speed serial transmission and a slower 10 MHz System Clock for parallel data handling.

## How to test

**Clock Configuration**
Before physical testing, the user must first program the demoboard's RP2040 microcontroller (using `pcs_lite_clocks.py`) to configure a 2nd clock: the slower 10 MHz System Clock (`clk_sys`) on the `ui_in[0]` pin.

**Testing**
* **Option A: Standalone Functional Test (MicroPython Script)**
  Users can validate the functional logic using the demoboard without external hardware by flashing the provided `post_sil_test.py` and `encoder.py` scripts to the onboard RP2040. The script manually drives the clocks to bit-bang a continuous sequence of random test vectors. It defaults to TX mode, generating parallel data and verifying the 10-bit serialized output. Sending `m` in the console will command the LTSSM to flip the bus to RX mode, streaming 10-bit symbols into the ASIC and checking the decoded parallel output.
  *(Note: Due to the GPIO execution limits of MicroPython, this script operates in the low kHz range to validate functional logic. True 66 MHz at-speed validation requires the FPGA setup in Option B).*

* **Option B: At-Speed Validation (FPGA Integration)**
  To physically validate the bidirectional link at the target 66 MHz, the demoboard can be interfaced with a 3.3V FPGA.
  * **Physical Setup:** Ensure both boards share a common ground. At 66 MHz, signal integrity is paramount; use the shortest possible jumper wires for the two serial lines (TX and RX), ideally twisting them with ground wires to mitigate electromagnetic interference. Two additional connections (`ui_in[2]` and `uo_out[1]`) are required for the `rx_req` and `rx_ack` handshaking during mode-switching.
  * **Interactive Manual Testing:** For initial bring-up and debug, the user can map the FPGA's physical switches to drive parallel data from the FPGA (transmitter). The receiver's output can then be mapped to the demoboard's LEDs for real-time visual confirmation of the 8b/10b link.
  * **66 MHz Performance Verification:** For at-speed validation of the 66 MHz link and the asynchronous CDC FIFOs, it is possible to interface the ASIC with an FPGA configured as a high-speed pattern generator. By implementing a Linear Feedback Shift Register (LFSR) in the FPGA fabric, users can drive pseudo-random data at the full target frequency to stress-test the design.

## External hardware

Optional: 3.3V FPGA and 5 jumper wires for hardware validation.