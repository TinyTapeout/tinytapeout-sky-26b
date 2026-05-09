## How it works

This project implements a small-scale Tensor Processing Unit (TPU) that performs 2x2 matrix multiplications using a systolic array of Multiply-Accumulate (MAC) units. It is designed for the Tiny Tapeout ASIC flow.

### Architecture

- **Processing Element (PE):** Each PE executes a multiply-accumulate operation and propagates partial data to its neighbors in the systolic array.
- **Systolic Array (2x2):** A mesh of 4 PEs wired in systolic fashion. Data flows left-to-right (weights) and top-to-bottom (inputs).
- **Unified Memory:** An 8-byte register bank storing both weight and input matrices (4 bytes each).
- **Control Unit:** A finite-state machine (FSM) sequences the load, compute, and output phases.
- **MMU Feeder:** Schedules data flow between memory, the systolic array, and the output port.

### Features

- **Signed 8-bit inputs, 16-bit outputs:** Handles signed integers (-128 to 127) and accumulates products in 16-bit precision.
- **Pipelined streaming:** Supports overlapped input of the next matrix pair while outputting results of the current multiplication.
- **Fused transpose:** Optional on-chip transpose of the second input matrix (enabled via `uio_in[1]`).
- **ReLU activation:** Optional ReLU (clamp negatives to 0) on the output (enabled via `uio_in[2]`).

### Pin Mapping

| Pin | Direction | Signal |
|-----|-----------|--------|
| `ui_in[7:0]` | Input | 8-bit matrix data |
| `uo_out[7:0]` | Output | 8-bit result data (half of 16-bit element) |
| `uio_in[0]` | Input | LOAD_EN: enable loading elements into memory |
| `uio_in[1]` | Input | TRANSPOSE: enable fused transpose of second operand |
| `uio_in[2]` | Input | ACTIVATION: enable ReLU activation on output |
| `uio_out[5]` | Output | STATE0: FSM state bit 0 |
| `uio_out[6]` | Output | STATE1: FSM state bit 1 |
| `uio_out[7]` | Output | DONE: high when results are ready |

## How to test

1. **Reset:** Assert `rst_n` low for several clock cycles, then release.
2. **Load matrices:** Set `uio_in[0]` (LOAD_EN) high and send 8 bytes via `ui_in` one per clock cycle: 4 weight elements followed by 4 input elements (row-major order).
3. **Wait for computation:** Deassert LOAD_EN and wait. The `DONE` signal (`uio_out[7]`) goes high when results are available.
4. **Read results:** Each of the 4 output elements is 16 bits, streamed as 2 consecutive 8-bit values on `uo_out` (high byte first). 8 clock cycles to read all 4 elements.
5. **Continuous operation:** You can begin loading the next matrix pair while reading results (pipelined).

### Simulation

```bash
cd test
pip install -r requirements.txt
make
```

This runs cocotb tests via Icarus Verilog covering identity multiply, general multiply, signed values, and ReLU activation.

## External hardware

No external hardware required for basic operation. Connect `ui_in` and `uio_in` to a microcontroller or FPGA for data input and control. Connect `uo_out` and `uio_out` to read results and status.
