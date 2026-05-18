# Hardware EEPROM Wear-Leveling Controller

A digital IP that transparently spreads write operations across physical memory blocks, extending the lifetime of external EEPROMs and flash memories in edge devices.

## How it works

The controller maintains two on‑chip tables:
- **Mapping table**: logical block → physical block (8 entries)
- **Wear counter table**: 16‑bit write count per physical block

On every **write_commit** command the wear counter of the addressed physical block is incremented. If the difference between that counter and the minimum among all physical blocks exceeds a fixed threshold (4), a remap is triggered. The logical block owning the least‑worn physical block is swapped with the currently written logical block. The host is informed via `move_request` and must copy the data before acknowledging with `move_ack`.

All operations are pipelined through a purely digital finite‑state machine that runs in a few clock cycles, making the block easy to integrate into any SPI or I²C memory controller.

## How to test

1. Apply reset (`rst_n` low) for at least 100ns.
2. Verify identity mapping by sending `read_req` for every logical address.
3. Issue repeated `write_req`/`write_commit` pairs to the same logical block while monitoring `busy` and `move_request`.
4. When `move_request` asserts, read the source (`uo_out[2:0]`) and destination (`uio_out[2:0]`) physical addresses, copy the data externally, then assert `move_ack`.
5. Confirm that after multiple writes the logical‑to‑physical mapping has changed, and that no physical block accumulates significantly more writes than others.
6. Use the provided Cocotb testbench (`test/test.py`) for automated verification.
