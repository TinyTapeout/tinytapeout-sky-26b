<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

### RTL Documentation: 8-bit Square Root (Q4.4)

### Functional Description
Calculates the square root of an 8-bit unsigned integer using the non-restoring algorithm. The output is provided in Q4.4 fixed-point format, allowing for fractional precision.

### Port Map
- **clk**: System Clock.
- **reset**: Active-high Reset.
- **start**: Pulse high to initiate calculation.
- **data_in [7:0]**: Integer input (0-255).
- **data_out [7:0]**: Q4.4 output (Upper 4 bits = Integer, Lower 4 bits = Fraction).
- **done**: Logic high when result is valid.

### Performance
- **Cycles**: 8 clock cycles per operation.
- **Precision**: 0.0625 (1/16th).

## How to test

Apply 8 bit input via switches and apply a pulse via push button in start pin. Observe output on LEDs

## External hardware

No special hardware required. Only LEDs may be used to display output.
