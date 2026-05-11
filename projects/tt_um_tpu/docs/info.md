# 🧠 Mini-TPU: A Tiny Tapeout-Based Systolic Array Accelerator

This project implements a **Mini Tensor Processing Unit (Mini-TPU)** on the **Tiny Tapeout** open-source ASIC platform. It features an SPI interface for instruction/memory and a compact 3×3 **systolic array** optimized for efficient matrix multiplication, making it ideal for **resource-constrained AI inference** tasks.

✨ Built using **Tiny Tapeout** and **Skywater 130nm PDK**  
🎯 Educational, efficient, and open-source

---

## 🔍 How it Works

The Mini-TPU is structured around a **weight-stationary systolic array** for accelerating matrix multiplication tasks.

Key components:

- **3×3 Processing Element (PE) array** for 4-bit MAC operations
- **SPI off-chip memory** for activations (Memory A) and weights (Memory B)
- **Control Unit** to execute custom instructions and orchestrate computation
- **Output-stationary dataflow** with pipelined MAC accumulation

Once data is loaded into the PE from SPI, the TPU executes the multiplication by propagating inputs through the systolic array and accumulating results in place.

---

## 🔧 Instruction Format

The Mini-TPU supports a minimal 12-bit instruction set for memory access and computation:

| Instruction       | Format (Binary)      | Description                                                               |
| ----------------- | -------------------- | ------------------------------------------------------------------------- |
| `LOAD m, r, c, x` | `10m0 rrcc xxxxxxxx` | Load 4-bit data `x` into memory `m` (0 = A, 1 = B) at row `r`, column `c` |
| `STORE r, c`      | `1100 rrcc 00000000` | Store result from array row `r`, column `c`                               |
| `RUN`             | `0100 0000 00000000` | Trigger systolic array to compute for 7 cycles                            |

This simple ISA allows deterministic control over all TPU behavior, suitable for small-scale AI inference use cases.

---

## 🧪 How to Test

### 🖥️ Simulation

- Simulate the RTL using `cocotb` or `SystemVerilog` testbenches
- Use included Python reference model for golden comparisons
- Testbench components:
  - Driver: sends LOAD, RUN, STORE sequences
  - Monitor: samples outputs
  - Scoreboard: compares with expected values
