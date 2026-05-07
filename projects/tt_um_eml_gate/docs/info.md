<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements the host-first EML architecture derived from the paper
at [arXiv:2603.21852](https://arxiv.org/html/2603.21852v2).

The chip itself is intentionally small. It exposes a Tiny Tapeout friendly
serial interface around one real fixed-point primitive:

```text
eml(x, y) = exp(x) - ln(y)
```

The important system split is:

- the **chip** is the primitive EML accelerator
- the **host** is the EML circuit builder

The host keeps the stack, walks the compiled RPN program, and evaluates only
EML nodes. For each `E` token it computes `exp(a) - ln(b)` either by calling
the chip for safe real-positive scalar cases or by evaluating the same EML
primitive off chip for complex or numerically fragile cases.

This is the continuous-math analogue of a NAND-based architecture:

- the chip is the reusable primitive
- the host wires many primitive calls into a larger function

## Interface summary

The interface is a simple serial protocol:

- **`ui[0]` (ser_in)**: Serial data input.
- **`ui[1]` (shift_en)**: Enable bit to shift `ser_in` into the input frame.
- **`ui[2]` (start)**: Trigger bit to start the EML computation once 5 bytes (SOF + 16-bit X + 16-bit Y) have been loaded.

The frame format is: `[0xA5] [X_hi] [X_lo] [Y_hi] [Y_lo]`.

Outputs on `uo_out`:
- **`uo[0]` (ser_out)**: Serial result output (36 bits).
- **`uo[1]` (busy)**: High when the engine is computing.
- **`uo[2]` (done)**: Pulses high when computation finishes.
- **`uo[3]` (error)**: Protocol or computation error.
- **`uo[4]` (rx_full)**: High when a full 5-byte frame is ready.
- **`uo[5]` (tx_pending)**: High when a result is ready to be shifted out.

Internally, the design is optimized for area and uses a shared sequential multiplier and hyperbolic CORDIC to implement the `Q6.10` fixed-point EML primitive.

## How to test

The cocotb testbench in `test/test.py` checks two layers:

- the native RTL kernel and protocol
- the full host-offloaded EML architecture

Run the RTL simulation with:

```sh
cd test
make -B
```

The full host-offloaded EML sweep evaluates all compiled paper programs through
the EML-only host interpreter and currently reaches `38/38`.

## External hardware

An external controller is required to stream requests and read results. That
controller can be a microcontroller, FPGA board, or host bridge. In the full
architecture it also owns the off-chip EML stack and complex-valued execution.
