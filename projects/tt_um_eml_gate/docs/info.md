<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This chip implements `eml(x, y) = exp(x) - ln(y)`, the EML operator
described in [arXiv:2603.21852](https://arxiv.org/abs/2603.21852v2).
The paper shows that this single binary operator, together with the
constant 1, can express all standard elementary functions (exp, ln, sin,
cos, sqrt, pow, etc.) through repeated composition.

The datapath is Q6.14 signed fixed-point (20-bit words). It uses one
shared sequential multiplier and one shared hyperbolic CORDIC unit.
The chip also supports a multiply opcode for host-side composition.

The SPI interface accepts a 56-bit frame:

```
Byte 0:    [1][opcode:2][00000]
Bytes 1-3: X operand (20 bits, sign-extended to 24)
Bytes 4-6: Y operand (20 bits, sign-extended to 24)
```

The response frame contains status bits and the 20-bit result.

## Interface

| Pin | Direction | Function |
|-----|-----------|----------|
| `ui_in[0]` | Input | MOSI |
| `ui_in[1]` | Input | SCLK |
| `ui_in[2]` | Input | CS_N (active low) |
| `uo_out[0]` | Output | MISO |
| `uo_out[1]` | Output | Busy |
| `uo_out[2]` | Output | Done |
| `uo_out[3]` | Output | Error |

SPI mode 0 (CPOL=0, CPHA=0). Data is sampled on SCLK rising edge and
shifted out on SCLK falling edge. A transaction starts when CS_N goes
high after clocking in 56 bits with bit 55 set.

## Modules

| File | Description |
|------|-------------|
| `tt_um_eml_gate.v` | Tiny Tapeout wrapper, pin mapping |
| `eml_serial_gate.v` | SPI transport, CDC synchronizers |
| `eml_gate_top.v` | FSM controller, exp/ln datapath |
| `fp_mul_seq.v` | Booth-style sequential multiplier |
| `cordic_hyp.v` | Hyperbolic CORDIC (rotation and vectoring) |
| `fp_pkg.vh` | Q6.14 constants and type definitions |

## How to test

Run the cocotb test suite:

```sh
cd test
make clean && make
```

The test suite contains 5 tests:

1. **test_protocol_basic** — verifies the SPI protocol rejects commands
   while the engine is busy.
2. **test_chip_eml_scalar** — checks `eml(0.5, 0.5)` against the
   reference value `exp(0.5) - ln(0.5) ≈ 2.342`.
3. **test_chip_mul** — checks the multiply opcode with `2.5 × 3.0 = 7.5`.
4. **test_chip_exp_ln_sweep** — sweeps `exp(x)` for x in [-3, +4] and
   `ln(x)` for x in [0.1, 20] using only chip results. This is a
   pure hardware accuracy test with no host correction.
5. **test_all_38_functions** — evaluates all 38 elementary functions from
   the paper (sin, cos, tan, sqrt, pow, etc.) as RPN programs. Each
   `E` token calls the chip. The host only uses `math.cos/sin/atan2`
   for complex-domain rotation, which the real-only chip cannot perform.

## Error analysis

The chip achieves the following accuracy at the test point x=0.5, y=0.5:

### Accurate (< 15% error) — 26 of 38

EXP (0.3%), LOG (0.0%), ADD (0.2%), SUB (0.1%), MUL (0.9%),
DIV (0.0%), INV (0.6%), HALF (2.3%), MINUS (0.4%), SQRT (0.2%),
SQR (1.1%), SIN (3.1%), COS (1.6%), TAN (3.0%), ATAN (2.8%),
POW (0.4%), LOG_BASE (1.2%), CONST_E (0.2%), CONST_PI (0.3%),
CONST_NEG_ONE (0.1%), CONST_TWO (0.3%), CONST_ZERO (0.2%),
CONST_ONE (0.0%), VAR_X (0.0%), VAR_Y (0.0%), RAW_EML (0.1%).

### Degraded (15–100% error) — 3 of 38

ASIN (60.8%), ACOS (29.6%), ASINH (27.3%).

These inverse trig functions require deep chains (300–500 nodes) where
Q6.14 rounding compounds through multiple exp/ln calls.

### Failed (> 100% error) — 9 of 38

CONST_I, LOGISTIC, SINH, COSH, TANH, ACOSH, ATANH, AVG, HYPOT.

The failures have two root causes:

1. **Catastrophic cancellation** — SINH, COSH, TANH, AVG compute
   differences of nearly-equal exponentials (e.g. `(exp(x) - exp(-x))/2`).
   With only ~4 decimal digits of Q6.14 precision, the subtraction
   amplifies the chip's ~0.002 per-call error into large divergence.

2. **Complex branch sensitivity** — CONST_I, ACOSH, ATANH require
   traversing complex branch cuts. The real-only chip cannot represent
   imaginary intermediates, so phase errors accumulate through the
   host's angle arithmetic.

### Pure ASIC sweep

The exp/ln sweep test passes 23 of 25 points. The two failures are
`exp(3.5) = 33.1` and `exp(4.0) = 54.6`, which exceed the Q6.14
representable range (max ≈ 32). All ln points pass.

### Limitations

- The Q6.14 format limits the representable range to approximately [-32, +32].
  Values of `exp(x)` for x > 3.3 overflow.
- Each chip call introduces ~0.002 absolute error. Programs with hundreds
  of EML nodes accumulate proportionally more error.
- The chip operates in the real domain only. Functions that require
  complex intermediates (trig via Euler's formula) rely on the host
  for angle computation.

## External hardware

An external SPI controller is required. This can be a microcontroller,
FPGA, or host bridge. The controller manages the RPN stack and calls
the chip for each EML or multiply operation.
