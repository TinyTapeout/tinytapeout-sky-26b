<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Keypad Calculator

## How it works
This project implements a calculator for a 4x4 keypad. The keypad scanner drives the column lines and reads the row lines to detect which key is pressed. Digits are buffered, operators are stored, and the ALU computes the final result.

Supported operations:
- Addition
- Subtraction
- Multiplication
- Division

The 8-bit result is shown on the dedicated output pins.

## How to test
1. Apply reset.
2. Press digit keys to enter the first operand.
3. Press an operator key.
4. Press digit keys to enter the second operand.
5. Press equals.
6. Observe the 8-bit result on `uo_out`.

## External hardware
- 4x4 matrix keypad
