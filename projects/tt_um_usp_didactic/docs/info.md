## How it works

Five independent educational modules share the tile simultaneously. A 3-bit main selector (`ui[7:5]`) routes the active module's outputs to `uo[7:0]`. The bidirectional pins (`uio[3:0]`) carry always-live monitoring signals regardless of which module is selected.

**Main MUX selector (`ui[7:5]`)**

| `ui[7:5]` | Module |
|-----------|--------|
| `000` | Logic Gate Library |
| `001` | Ring Oscillator + Configurable Divider |
| `010` | Phase-Frequency Detector (PFD) |
| `011` | Flip-Flop Study (D-FF and T-FF) |
| `100` | 4-Bit Binary Counter |
| `101`-`111` | Reserved (outputs zero) |

The lower 5 pins (`ui[4:0]`) are shared sub-inputs whose meaning changes with the selector.

---

**Module 000 -- Logic Gate Library**

Inputs A (`ui[0]`) and B (`ui[1]`) feed seven combinational gates: NOT, AND, OR, XOR, NAND, NOR, XNOR. All seven results are simultaneously live on `uo[7:1]`, enabling a single oscilloscope sweep to compare propagation delays across all gates. `uo[0]` mirrors the gate chosen by the 3-bit selector `ui[4:2]`.

---

**Module 001 -- Ring Oscillator + 24-bit Configurable Divider**

An 11-stage inverter ring built from explicit `sky130_fd_sc_hd__inv_1` instantiations (with `(* keep = "true" *)` to prevent Yosys optimisation). The estimated native frequency is approximately 1.74 GHz. Because pad parasitics limit direct measurement to roughly 20 MHz, the ring output is fed into a 24-bit ripple counter. `ui[1:0]` selects which tap is routed to `uo[0]`:

| `ui[1:0]` | Counter bit | Approx. frequency | Use |
|-----------|-------------|-------------------|-----|
| `00` | bit 6 | ~13.6 MHz | Standard oscilloscope |
| `01` | bit 12 | ~424 kHz | USB logic analyser |
| `10` | bit 20 | ~830 Hz | Audio range -- connect a buzzer or speaker |
| `11` | bit 23 | ~104 Hz | LED-visible blink |

`ui[2]` enables the ring (active high). The raw ring output is also available permanently on `uio[3]`, and the divide-by-1024 tap on `uio[2]`.

---

**Module 010 -- Phase-Frequency Detector (PFD)**

A classic dual flip-flop PFD with AND-based asynchronous reset -- the standard topology used in real PLL designs. `clk_ref` (`ui[0]`) and `clk_vco` (`ui[1]`) each drive one D flip-flop. When `clk_ref` leads, UP (`uo[0]`) pulses high while DOWN stays low. When `clk_vco` leads, DOWN (`uo[1]`) pulses high. When both flip-flops set simultaneously, their AND gate fires an asynchronous reset, creating the characteristic narrow dead-zone pulse. The same UP and DOWN signals also appear permanently on `uio[0]` and `uio[1]` for continuous probing.

---

**Module 011 -- Flip-Flop Study (D-FF and T-FF)**

Demonstrates how a chip stores a single bit of information. A D flip-flop and a T flip-flop share a common manual clock (`ui[0]`). The D flip-flop samples data input `ui[1]` on every rising clock edge, producing Q on `uo[0]` and the complement ~Q on `uo[1]`. The T flip-flop toggles its state when enable `ui[2]` is high at the rising clock edge, producing Q on `uo[2]`. Both flip-flops have a common asynchronous reset on `ui[3]`. This module lets students observe the practical effect of mechanical button bounce on an untreated clock signal.

---

**Module 100 -- 4-Bit Binary Counter**

A 0-to-15 ripple counter driven by a manual clock button (`ui[0]`). Each rising edge increments the count, visible on `uo[3:0]` and connectable directly to four LEDs on the PCB. An asynchronous reset on `ui[1]` clears the counter immediately. Students can watch the binary number grow one button press at a time and observe how flip-flops cascade to count events.

---

**Always-live outputs (`uio[3:0]`)**

Regardless of `main_sel`, the bidirectional pins always carry:

| Pin | Signal |
|-----|--------|
| `uio[0]` | PFD UP |
| `uio[1]` | PFD DOWN |
| `uio[2]` | Ring oscillator divided by 1024 |
| `uio[3]` | Ring oscillator raw output |

## How to test

**Logic Gate Library (main_sel = `000`)**

Set `ui[7:5]` = `000`. Connect A to `ui[0]` and B to `ui[1]` using DIP switches or a microcontroller. Step through selector values `ui[4:2]` from 0 to 6. Read `uo[0]` for the selected gate result. All seven gate outputs are simultaneously visible on `uo[7:1]` for propagation-delay comparison on an oscilloscope. Apply a step function on A and probe multiple output pins simultaneously to compare switching speeds.

**Ring Oscillator (main_sel = `001`)**

Set `ui[7:5]` = `001` and `ui[2]` = 1 (ring enable). Select `ui[1:0]` = `10` for the audio tap (~830 Hz) and connect a small speaker or piezo buzzer to `uo[0]` -- you will hear the silicon oscillating. Switch to `ui[1:0]` = `00` for the ~13.6 MHz tap visible on an oscilloscope. For a VDD-vs-frequency characterisation exercise, vary VDD from 1.6 V to 1.9 V in 0.1 V steps and record the frequency at each voltage multiplied by the divider ratio; this demonstrates the relationship between supply voltage and inverter switching speed in 130 nm CMOS.

**Phase-Frequency Detector (main_sel = `010`)**

Set `ui[7:5]` = `010`. Apply two square waves to `ui[0]` (clk_ref) and `ui[1]` (clk_vco) from a two-channel function generator with phase control. Observe `uo[0]` (UP) and `uo[1]` (DOWN) pulse widths on an oscilloscope. Increase the phase difference from 0 to 180 degrees and verify that the UP pulse width scales linearly with phase error, confirming the PFD's behaviour as a linear phase comparator. Add an external RC low-pass filter across UP or DOWN to see the averaged DC control voltage.

**Flip-Flop Study (main_sel = `011`)**

Set `ui[7:5]` = `011`. Use a push-button on `ui[0]` as the manual clock. Observe `uo[0]` (D-FF Q) and `uo[1]` (D-FF ~Q) on LEDs. Set `ui[1]` = 1 then press the button -- watch Q latch the value. Set `ui[2]` = 1 and press the button repeatedly -- watch `uo[2]` (T-FF Q) toggle on each press. Use an oscilloscope on the clock pin to visualise mechanical bounce and observe its effect on the flip-flop output.

**4-Bit Binary Counter (main_sel = `100`)**

Set `ui[7:5]` = `100`. Connect `uo[3:0]` to four LEDs. Press the button on `ui[0]` and watch the binary count increment from 0 to 15. Use `ui[1]` = 1 to reset immediately to 0. Swap the button for a signal generator to reach the counter's maximum clock frequency.

## External hardware

- Oscilloscope (2+ channels) for ring oscillator and PFD measurement
- Two-channel function generator with phase control for PFD testing
- Push-buttons (2) for flip-flop and counter modules
- 4 LEDs for counter output visualisation
- Piezo buzzer or small speaker (optional) for ring oscillator audio tap
- Optional RC low-pass filter (e.g. 1 kohm + 100 nF) for PFD charge-pump emulation
- TT Demoboard (PCB supplied via shuttle coupon)
