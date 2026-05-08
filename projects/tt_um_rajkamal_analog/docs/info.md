## How it works

This project implements a configurable analog clock generation unit on the Sky130 1.8V process. A voltage-controlled MUX (VCMUX) selects between three ring oscillator circuits — 3-stage, 5-stage, and 7-stage — based on the DC voltage applied to ua[1]. The VCMUX has eight 200mV thresholds across the 0–1.8V range. The selected oscillator's output appears on ua[0].

Additional test structures include T flip-flop frequency dividers connected to the 5- and 7-stage oscillators, a capacitor-loaded 5-stage oscillator, and a resistor-ladder voltage reference (bandgap reference divider).

## How to test

**Test 0 — Is the system alive?**  
Apply 1.8V to ua[1]. Confirm ua[0] shows approximately 200mV (resistor divider output).

**Test 1 — Switching thresholds**  
Apply DC voltage to ua[1] from 0–1.8V in steps. Observe ua[0] switching between oscillation frequencies or a DC level. Expected thresholds:
- 200–400mV: 3-stage ring oscillator
- 400–600mV: T flip-flop ÷2 output (from 5-stage OSC)
- 600–800mV: 5-stage ring oscillator
- 800mV–1V: T flip-flop ÷2 output (from 5-stage OSC)
- 1–1.2V: 7-stage ring oscillator
- 1.2–1.4V: 7-stage OSC through minimal-dimension inverter
- 1.4–1.6V: Capacitor-loaded 5-stage oscillator
- 1.6–1.8V: ~200mV DC from resistor divider

**Test 2 — Oscillator characterization**  
For each threshold range, record frequency, amplitude (Vpp), and DC offset using an oscilloscope.

## External hardware

- Laboratory DC power supply (0–1.8V range, 1mV resolution)
- Oscilloscope (≥100 MHz bandwidth)
- Multimeter
