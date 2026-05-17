## How it works

This project implements a 125 MHz All-Digital Phase-Locked Loop (ADPLL) targeting the SkyWater 130nm process node. It features a structural Digitally Controlled Oscillator (DCO) built using a 127-stage ring loop (1 NAND gating cell and 126 inverters from the sky130_fd_sc_hd library). 

A coarse frequency-tapping multiplexer is included to allow switching between the full 127-stage loop (~125 MHz baseline) and a shortened 63-stage loop (~250 MHz baseline) via external pin controls. The feedback loop utilizes a fully synchronous parallel-gated digital divider to minimize clock-to-Q jitter propagation.

## How to test

1. Apply an active-low reset pulse to `rst_n` (ui_in[2]) to initialize the state tracking registers.
2. Select the input reference clock via `clk_sel` (ui_in[1]). Set low to use the internal 50MHz TinyTapeout system clock, or high to feed a custom external clock into `ref_clk` (ui_in[0]).
3. Set the coarse frequency selection with `tap_sel` (ui_in[3]) to pick the oscillator loop depth.
4. Configure the 4-bit feedback division ratio bus `div_sel` (ui_in[7:4]) to evaluate locking steps and track the output clock frequency via `clk_out` (uo_out[0]) and the raw high-speed monitor pin `dco_clk_raw` (uo_out[1]).