<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a **1-bit artificial neuron** (perceptron) in pure combinational logic on silicon.

### The Perceptron Algorithm

The design computes the fundamental neuron equation:

$$y = (x_0 \cdot w_0 + x_1 \cdot w_1 + x_2 \cdot w_2 + x_3 \cdot w_3) \geq \text{threshold}$$

where:
- **x₀–x₃** are 4 binary inputs (0 or 1)
- **w₀–w₃** are 4 programmable integer weights (0–3, each 2 bits)
- **threshold** is a programmable firing threshold (range 1–4, set via 2-bit config)
- **y** is the binary neuron output (1 = fires, 0 = silent)

### Pin Mapping

**Dedicated Inputs (ui_in[7:0])**
- `ui_in[3:0]`: Binary inputs x₀, x₁, x₂, x₃
- `ui_in[5:4]`: Weight w₀ (2 bits, value 0–3)
- `ui_in[7:6]`: Weight w₁ (2 bits, value 0–3)

**Bidirectional IOs (uio_in[7:0])**
- `uio_in[1:0]`: Weight w₂ (2 bits, value 0–3)
- `uio_in[3:2]`: Weight w₃ (2 bits, value 0–3)
- `uio_in[5:4]`: Threshold config (2 bits; actual threshold = config + 1, so 1–4)
- `uio_in[7:6]`: Unused

**Dedicated Outputs (uo_out[7:0])**
- `uo_out[0]`: Neuron output y (1 if fires, 0 if silent)
- `uo_out[4:1]`: Weighted sum (4-bit debug output, range 0–12)
- `uo_out[7:5]`: Unused (tied low)

### Hardware Implementation

The design uses a three-stage datapath:

1. **Weighted Multiply**: Each input x is multiplied by its weight w using an AND gate (since inputs are binary, multiplication is gating).
2. **Sum Tree**: Three levels of addition fold four 2-bit terms into a single 4-bit sum.
3. **Threshold Compare**: The sum is compared against the threshold to produce the final 1-bit neuron output.

This is purely **combinational logic** (no clock, no state), so the output is valid the instant all inputs are set.

## How to test

The design includes a comprehensive cocotb testbench covering five key neuron behaviors.

### Running the Tests

```sh
cd test/
make
```

This builds the RTL simulation using Icarus Verilog and runs all testbench modules via cocotb.

### Test Cases

1. **test_zero_inputs**: Verifies the neuron remains silent when all inputs are 0, regardless of weights or threshold.

2. **test_or_gate**: Configures the neuron as an OR gate (w₀=w₁=w₂=w₃=1, threshold=1). The neuron should fire if *any* input is 1.

3. **test_and_gate**: Configures the neuron as an AND gate (w₀=w₁=w₂=w₃=1, threshold=4). The neuron fires only when *all* four inputs are 1.

4. **test_weighted_sum**: Tests the arithmetic of the weighted sum stage with hand-calculated cases:
   - [1,0,0,0] × [3,2,1,0] → sum = 3
   - [1,1,0,0] × [2,2,2,2] → sum = 4
   - [1,1,1,1] × [1,2,3,3] → sum = 9
   - [0,1,0,1] × [3,3,3,3] → sum = 6
   - [1,0,1,0] × [2,0,2,0] → sum = 4

5. **test_threshold_sweep**: Verifies the firing boundary by sweeping the threshold:
   - With sum=4, the neuron fires for all threshold configs (1, 2, 3, 4).
   - With sum=2, the neuron fires for thresh configs 0–1 (actual thresholds 1–2) but not 2–3 (thresholds 3–4).

### Viewing Waveforms

The testbench generates a waveform file (`tb.fst`). To visualize with GTKWave:

```sh
gtkwave tb.fst tb.gtkw
```

## External hardware

None. This is a pure digital design with no external dependencies.
