<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements an 8-bit, depth-16 AXI4-Stream FIFO with First-Word Fall-Through (FWFT) characteristics. 

Instead of using traditional Block RAM (BRAM) which introduces a 1-clock cycle read latency, this design utilizes a Register File (D-Flip-Flops) for its storage element. This architectural choice allows for asynchronous, combinational reads. As a result, when data is written to the FIFO, it immediately "falls through" to the output bus on the same clock cycle without requiring a read strobe, providing true 0-cycle latency FWFT behavior. 

The FIFO manages AXI4-Stream handshaking using `tvalid` and `tready` signals on both the master and slave interfaces, and provides internal 5-bit pointers to evaluate full and empty conditions.

## How to test

The design can be tested by providing a 50 MHz clock to the `clk` pin and managing the AXI-Stream control signals.

**Write Operation (Producer):**
1. Place 8-bit data on the input pins `ui_in[7:0]` (`s_axis_tdata`).
2. Assert `uio_in[0]` (`s_axis_tvalid`) to HIGH.
3. Observe `uio_out[1]` (`s_axis_tready`). If HIGH, the data is successfully written on the rising clock edge.

**Read Operation (Consumer):**
1. Because of the FWFT nature, valid data will automatically appear on `uo_out[7:0]` (`m_axis_tdata`).
2. The availability of valid data is indicated by `uio_out[3]` (`m_axis_tvalid`) being HIGH.
3. Assert `uio_in[2]` (`m_axis_tready`) to HIGH to consume the data and advance the read pointer.

Debug flags are available on `uio_out[4]` (FIFO Full) and `uio_out[5]` (FIFO Empty).
