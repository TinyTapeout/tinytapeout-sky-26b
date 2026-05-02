# AXI4-Lite Slave Tiny Tapeout Project

This design wraps a simple AXI4-Lite slave in a Tiny Tapeout-compatible top module.

## Behavior

- `ui_in[4:0]` selects the register address
- `ui_in[5]` starts a write transaction
- `ui_in[6]` starts a read transaction
- `ui_in[7]` acts as `BREADY`
- `uio_in[7:0]` carries write data
- `uo_out[7:0]` and `uio_out[7:0]` return the 16-bit read data
- `uio_oe` enables the bidirectional pins only while driving read data

## Register Map

- 32 registers are implemented
- Address `1` is a read-only ID register with the value `0x00018644`
- Writes use byte strobes inside the AXI4-Lite slave

## Top Module

- `tt_um_jenny82121027_axi4lite`

## Design Files

- `src/tt_um_jenny82121027_axi4lite.sv`
- `src/axi4_lite_slave.sv`

## Verification

- Cocotb regression runs under `test/`
- Verilator assertions are enabled in the slave RTL
- The GitHub Actions GDS flow passed for the current submission-ready version
