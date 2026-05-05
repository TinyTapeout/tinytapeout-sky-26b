<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a **programmable** sequential Hardware Neural Network consisting of a single layer with 3 neurons, each processing 3 inputs, built using a shared Multiply-Accumulate (MAC) unit to fit within a single Tiny Tapeout tile. 

The design allows loading custom Weights, Biases, and Inputs at runtime. It then sequentially multiplies the input features by the programmed 3x3 weight matrix, accumulates the values along with the programmed biases, and finally passes them through a ReLU activation function. Because all calculations share a single MAC engine, it functions exactly like a Tiny Tensor Processing Unit (TPU).

## How to test

The design exposes a multiplexed memory-mapped interface using the `uio_in` pins. Memory addresses (0-15) are routed via `uio_in[3:0]`, write enable is on `uio_in[4]`, and read enable is on `uio_in[5]`.

### 1. Load Data (Inputs, Weights, Biases)

To write to the internal memory, you must set `uio_in[4]` (`io_write`) to `1`, supply data on `ui_in`, and select the memory address on `uio_in[3:0]`:

* **Addresses 0, 1, 2:** Inputs `X[0]`, `X[1]`, `X[2]`
* **Addresses 3 to 11:** Weights matrix `W[0..8]` (Row major format: `W[Neuron_i][Input_j]`)
* **Addresses 12, 13, 14:** Biases `B[0]`, `B[1]`, `B[2]`

Clock the design to latch each value into its respective register.

### 2. Run Computation

* Set `uio_in[4]` (`io_write`) to `0`.
* Set `uio_in[3:0]` (address) to `15` (`4'b1111`) to trigger the calculation sequence.
* Supply a 2-bit value on `ui_in[1:0]` to configure the Programmable PReLU activation function:
  * `00`: Standard ReLU
  * `01`: $x/2$
  * `10`: $x/4$
  * `11`: $x/8$
* The Finite State Machine (FSM) will begin computation. Wait for exactly 9 clock cycles until it completes and inherently returns to the `STATE_IDLE` state. The FSM is highly optimized, computing 1 inference for a neuron every 3 clock cycles by overlapping the PReLU activation combinationally with the final Multiply-Accumulate step (zero-cycle activation penalty).

### 3. Read Outputs

* Set `uio_in[5]` (`io_read`) to `1`.
* Set `uio_in[3:0]` to `0`, `1`, or `2` to map the corresponding network output `Y[0]`, `Y[1]`, or `Y[2]` onto the `uo_out` pins.

## External hardware

None required. The testbench or an external microcontroller can sequentially write the parameters across the bus and trigger calculations.