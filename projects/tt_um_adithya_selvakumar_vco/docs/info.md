<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a 4-stage differential ring voltage-controlled oscillator (VCO) implemented in the SkyWater SKY130A 130nm CMOS process. The design is based on a reference by Georg Boecherer (gbsha/tt08-analog-vco).

The oscillator consists of a bias generator (`vco_bias`) and a 4-stage differential ring core (`vco_core`). Each stage contains a differential pair with PFET active loads, an NFET tail current source, a MOS capacitor for frequency tuning, and a two-inverter output buffer. The fourth-to-first feedback connection swaps differential polarity, creating 5 total inversions (satisfying the Barkhausen phase condition of 135° per stage). This topology produces 4 quadrature outputs with 45° phase spacing.

Frequency is controlled via an external current (I_IN on ua[0]), which the bias circuit mirrors to set both the PFET load gate voltage and the NFET tail current in every stage. The tuning range spans approximately 200 kHz to 3 MHz depending on the control current.

All 8 buffered digital outputs (VP0–VP3, VN0–VN3) are rail-to-rail square waves at the oscillation frequency, each separated by 45° of phase.

## How to test

1. Apply 1.8V to VDPWR.
2. Inject a control current into ua[0] (I_IN). Start with approximately 1–10 µA and increase to sweep frequency.
3. Monitor ua[1] (VB) to observe the internally generated bias voltage.
4. Observe the oscillation on any of the digital outputs uo[0]–uo[7]. Adjacent pairs (e.g., uo[0]/uo[1]) are complementary; successive pairs are 45° phase-shifted.
5. Use an oscilloscope or frequency counter on the digital outputs to measure oscillation frequency vs. control current.

## External hardware

- Current source or resistor network to inject control current into ua[0]
- Oscilloscope or frequency counter to measure output frequency
