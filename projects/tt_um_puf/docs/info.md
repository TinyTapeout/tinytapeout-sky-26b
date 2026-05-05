## How it works

This project implements a **Ring Oscillator Physical Unclonable Function (RO-PUF)** on the sky130 process node.

A 32-bit LFSR (Linear Feedback Shift Register) with taps at positions 32, 22, 2, and 1 runs continuously. Its outputs feed 16 toggle flip-flops, each driven by a unique combination of LFSR tap XOR values. Because each toggle FF sees a structurally different Boolean function of the LFSR, the synthesiser cannot merge them — they behave like independent oscillators whose frequencies are set by silicon manufacturing variation.

Eight 12-bit counter pairs accumulate the toggle values of adjacent FF pairs over a fixed 1000-cycle window. A three-state FSM (IDLE → RUN → DONE) manages the measurement cycle cleanly, ensuring the done pulse fires for exactly one clock cycle with no restart race. After each window, counters in each pair are compared; the PUF response bit is the XOR of all eight comparison results, scrambled by the LFSR and a running 8-bit CRC.

## How to test

1. Set clock to 50 MHz.
2. Assert `rst_n` low for at least 5 cycles, then release high.
3. The FSM starts automatically. Wait for `uo_out[1]` to pulse HIGH (exactly 1 clock cycle). This takes approximately 1002 cycles (~20 µs at 50 MHz).
4. Read the PUF response from `uo_out[0]` on the same cycle that `uo_out[1]` is HIGH.
5. The FSM restarts immediately — `uo_out[1]` will pulse again after another ~1002 cycles.
6. `uo_out[7:2]` outputs scrambled counter MSBs for debug/characterisation.
7. To re-seed the LFSR with a different sequence, pulse `rst_n` low and release.

## External hardware

None required.
