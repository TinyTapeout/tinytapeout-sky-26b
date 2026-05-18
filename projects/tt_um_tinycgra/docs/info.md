## How it works

This project is a 2x2 CGRA for Tiny Tapeout.
Each processing element (PE) selects two inputs from north, south, east, and west, then applies a 2-bit ALU operation.
In the Tiny Tapeout top, the north and west boundaries are driven by one latched input byte, while east and south are tied to zero.

For area study, the repository also includes 3x3 variants built from the same PE:

- `pe_array_mesh.sv`: generic `ROWS x COLS` mesh fabric
- `cgra_3x3_top.sv`: generic 3x3 top
- `area_bench_top.sv`: pattern-selectable study top
- `area_pat0_top.sv`: `2x2 / NSWE / Ctx2`
- `area_pat1_top.sv`: `3x3 / NS / Ctx2`
- `area_pat2_top.sv`: `3x3 / NSWE / Ctx1`
- `cgra_3x3_ctx2_top.sv`: `3x3 / NSWE / Ctx2`

The 2x2 Tiny Tapeout top uses a 24-bit serial bitstream:

- 4 PEs
- 6 configuration bits per PE
- Shift order: `PE00 -> PE01 -> PE10 -> PE11`

For multi-context variants, each PE stores one 6-bit configuration per context.
With `CONTEXTS=2`, each PE stores two configurations and `context_id_i` selects which one is active.

Each PE uses this format:

- `[5:4] sel_a`
- `[3:2] sel_b`
- `[1:0] op`

The Tiny Tapeout wrapper separates configuration and execution:

- `config_mode=1`: `uio[0]` and `uio[1]` are used as `cfg_di` and `cfg_shift_en`
- `config_mode=0`: `uio[0]` and `uio[1]` become outputs for `cfg_do` and `cfg_done`

`ui_in[7:0]` is latched by `load_input` and then broadcast to the north and west edges.

`uo_out[7:0]` shows one selected PE output. With `debug_xor_mode=1`, it shows `PE00 ^ PE01 ^ PE10 ^ PE11`.

## Verification

There are two main verification flows.

The Tiny Tapeout top is verified with cocotb and a Python model:

- `test/cgra_model.py`: software model, bitstream packing, and expected cycle traces
- `test/test.py`: drives `tt_um_tinycgra` in `src/project.v`
- `test/tb.v`: Verilog wrapper for the Tiny Tapeout top

This checks:

- serial configuration loading
- mode transitions between config and run
- input latching
- per-PE cycle-by-cycle outputs
- selected `uo_out`
- XOR debug mode

The area-study tops use a shared cocotb testbench:

- `test/tb_area.v`: common wrapper for `area_pat0_top`, `area_pat1_top`, and `area_pat2_top`
- `test/test_area.py`: shared driver and checker

These tests directly drive `north/south/east/west`, `config_di_i`, `config_shift_en_i`, and `context_id_i`, then compare `pe_data_o` against the Python mesh model.

Current area-top coverage:

- `pat0`: `2x2 / NSWE / Ctx2`
- `pat1`: `3x3 / NS / Ctx2`
- `pat2`: `3x3 / NSWE / Ctx1`

There are also Yosys-based synthesis sanity checks:

- `scripts/run_area_patterns.sh`
- `scripts/run_area_tops.sh`

## How to test

Run the Tiny Tapeout top regression:

```sh
make
```

Run the area-top regressions:

```sh
make AREA_CASE=pat0
make AREA_CASE=pat1
make AREA_CASE=pat2
```
