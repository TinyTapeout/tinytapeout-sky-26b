## How it works

This die is the **memory-controller half** of the authQV RISC-V system.
The actual RV32I CPU runs on a companion FPGA; this chip contains only
the QSPI flash controller and an 8-phase parallel-bus bridge that
exposes its memory-fetch interface to the FPGA.

**Block diagram:**

```
   +--------------- TT die ---------------+
   |  flash --> qspi_ctrl --> mem_ctrl    |
   |                            |          |
   |                       tt_mem_bridge   |
   +-------------|------|-----------------+
                 ui_in   uo_out
                 |       ^
                 v       |
   +-------------|------|-----------------+
   |       fpga_mem_bridge                 |
   |              |                        |
   |   tinyqv_cpu (RV32I) <--- block RAM   |
   +---------------------------------------+
```

The TT die only services **flash reads** (instruction fetch and
read-only data loads). All writable memory lives in FPGA block RAM.
Both sides run an identical free-running 8-phase counter that resets
together; one byte of the request frame is exchanged per phase, so a
full request/response round trip takes 8 clocks.

**Request frame (FPGA → TT, ui_in):** instr_addr, fetch_restart,
fetch_stall, data_addr, data_read_n.

**Response frame (TT → FPGA, uo_out):** status (started/stopped/
instr_ready/data_ready) followed by instr_data and data_from_read
bytes.

**QSPI:** uio[0] = flash CS, uio[1..2] / uio[4..5] = SD0..SD3,
uio[3] = SCK, uio[6..7] held high (PSRAM CS pins, unused).

**Memory map (CPU view):**

| Range                       | Region                   |
| --------------------------- | ------------------------ |
| `0x0000_0000`–`0x00FF_FFFF` | QSPI flash (read, via TT)|
| `0x0100_0000`–`0x0100_FFFF` | FPGA block RAM (R/W)     |
| `0x8000_0000`+             | FPGA peripherals (GPIO)  |

**ISA: RV32E** — the CPU on the FPGA is instantiated with
`NUM_REGS=16, REG_ADDR_BITS=4`, i.e. only the lower 16 architectural
registers (`x0`–`x15`). All standard RV32E base instructions are
supported: ADD/SUB/AND/OR/XOR/SLT, shifts, LUI/AUIPC, JAL/JALR,
branches, LB/LH/LW/LBU/LHU/SB/SH/SW, ECALL, EBREAK, MRET, and CSR
read/write/set/clear. Programs must be compiled with `-march=rv32e`
(or equivalent) so the toolchain never emits references to `x16`–
`x31`. MUL/Zicond, the C (compressed) extension, performance counters
(`mcycle`/`minstret`/`mtime`), and the external interrupt controller
are **not** present — they live on the FPGA if needed at all.

## How to test

1. Connect a QSPI flash module to the QSPI PMOD pins (uio bus): the
   flash must be in fast-read quad-I/O continuous-read (EBh) mode.
2. Wire the companion FPGA so that `tt_um_authQV.ui_in` is driven by
   the FPGA's `fpga_mem_bridge.to_tt` and `uo_out` is read into
   `from_tt`. Drive `rst_n` from the FPGA's synchronous reset so the
   two phase counters start at 0 on the same cycle.
3. Load a RISC-V program image into the flash starting at offset 0.
4. Apply reset, then release. The CPU on the FPGA fetches its first
   instruction from flash via this die; you should see flash CS
   (uio[0]) drop and SCK (uio[3]) start toggling within a few cycles.
5. The cocotb testbench in `test/test.py` exercises this directly: it
   drives the 8-phase request frame manually and asserts that flash
   CS is asserted and SCK toggles in response to a fetch_restart.

## External hardware

- **QSPI PMOD** with one QSPI flash chip (e.g. the
  [tinytapeout QSPI PMOD](https://github.com/mole99/qspi-pmod)).
- **Companion FPGA** running `fpga/fpga_top.v` (CPU + block RAM +
  GPIO + bridge mirror). Any FPGA with ≥64 KB of block RAM works
  (iCE40 UP5K, ECP5, Artix-7, etc.). The FPGA's clock and reset must
  be wired to the TT die's `clk` and `rst_n` pins.
