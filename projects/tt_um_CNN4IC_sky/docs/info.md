<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused sections.
You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

CNN4IC is a hardware CNN (Convolutional Neural Network) accelerator that classifies 10×10 pixel images using two 5×5 convolutional kernels. Communication with the chip is done over SPI.

The design is split into two subsystems:

**Communication & Memory (`comm_mem_top`):**
- An SPI slave (`spi_cnn_slave_8`) decodes 3-bit commands sent by the master.
- 10 image registers store a 10×10 image (3 bits per pixel = 30 bits per row).
- 5 weight registers store a 5×5 kernel (3 bits per weight = 15 bits per row).
- Two Master Registers hold the final accumulator results (acc0, acc1) for readback.

**CNN Processing (`cnn_proc_top`):**
- The controller (`SC_STATEMACHINE_CNN_CTRL`) runs `cnn_top` twice sequentially — once per kernel.
- `cnn_top` divides the 10×10 image into 9 overlapping 6×6 fragments (stride=2) and processes each with `mux_cnn`.
- `mux_cnn` extracts a 5×5 window from each 6×6 fragment, computes a multiply-accumulate (MAC) operation, and feeds the result into a progressive max-pool.
- The 9 max-pool outputs are summed into a final accumulator (`acc`).
- After both kernels complete, a signed comparator determines the winner: `comp_result = 1` if acc0 > acc1 (kernel 0 wins), `0` otherwise.

**SPI command map (3-bit command prefix):**

| Command | Code  | Description                                 |
|---------|-------|---------------------------------------------|
| IDLE    | `000` | No operation                                |
| LOAD IMAGE | `001` | Load 10 rows × 30 bits of image data     |
| LOAD WEIGHTS | `010` | Load 5 rows × 15 bits of kernel data  |
| START CNN | `011` | Trigger CNN inference (no payload)        |
| READ RESULT | `100` | Read 1-bit classification result        |
| READ MR1 | `101` | Read 16-bit acc0 (kernel 0 accumulator)  |
| READ MR2 | `110` | Read 16-bit acc1 (kernel 1 accumulator)  |
| READ WEIGHTS | `111` | Read back weights (16 bits)          |

## How to test

1. Connect an SPI master to the chip's SPI pins (CLK, CS_n, MOSI, MISO).
2. Send command `001` followed by 10 rows × 30 bits to load the 10×10 image (3 bits per pixel, 10 pixels per row).
3. Send command `010` followed by 5 rows × 15 bits to load the two 5×5 kernels (one at a time). Repeat for the second kernel if needed.
4. Send command `011` (START CNN) to trigger inference. Wait for the `done` output pin to pulse high.
5. Send command `100` to read the 1-bit classification result on MISO (`comp_result`).
6. Optionally send commands `101` / `110` to read the raw 16-bit accumulators for both kernels.
7. To abort a command mid-transfer, assert `CMD_Reset` (ui[3]) high for one cycle.
8. System reset is `rst_n` (active low, TT standard).

**Pin reference:**

| Pin     | Direction | Signal       | Description                                 |
|---------|-----------|--------------|---------------------------------------------|
| ui[0]   | Input     | SPI_CLK      | SPI clock from master                       |
| ui[1]   | Input     | SPI_CS_n     | SPI chip select (active low)                |
| ui[2]   | Input     | SPI_MOSI     | SPI data input                              |
| ui[3]   | Input     | CMD_Reset    | Abort current SPI command                   |
| uo[0]   | Output    | SPI_MISO     | SPI data output                             |
| uo[1]   | Output    | comp_result  | 1 = kernel0 wins, 0 = kernel1 wins          |
| uo[2]   | Output    | done         | Pulses high when inference is complete      |
| uo[3]   | Output    | MR1_Load_dbg | Debug: Master Register 1 load (active low)  |
| uo[4]   | Output    | MR2_Load_dbg | Debug: Master Register 2 load (active low)  |

## External hardware

An SPI master (e.g., microcontroller, FPGA, or FT232H USB-SPI bridge) is required to load image/weight data and read results. No other external components are needed.
