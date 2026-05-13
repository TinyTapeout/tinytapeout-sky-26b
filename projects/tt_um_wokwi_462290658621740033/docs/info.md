<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a 3-bit magnitude comparator that takes two 3-bit unsigned
integers A and B as inputs and compares them, displaying the result on a 7-segment
display. 

The circuit first computes the XOR of each corresponding bit pair (A2/B2, A1/B1, A0/B0)
to detect differences between the two numbers. These difference signals are then fed
into a chain of AND and NOT gates to determine the most significant bit position where
A and B differ, which determines the result. Three comparison outputs are derived:

- **A > B (GT):** Asserted when A is greater than B, computed by checking the highest
  differing bit where A=1 and B=0.
- **A = B (EQ):** Asserted when all XOR outputs are zero (no differing bits), computed
  by inverting the OR of the GT and LT signals.
- **A < B (LT):** Asserted when A is less than B, computed by checking the highest
  differing bit where A=0 and B=1.

The three comparison results are encoded and routed to the 7-segment display outputs
(seg_a through seg_g) to visually indicate the result — displaying a distinct symbol
for greater than, equal to, or less than.

## How to test

1. Set the 6 input switches: the lower 3 switches (ui[0]–ui[2]) represent A (A0=LSB,
   A2=MSB) and the upper 3 switches (ui[3]–ui[5]) represent B (B0=LSB, B2=MSB).
2. The 7-segment display will update to show the comparison result between A and B.
3. Try the following test cases to verify correct operation:

| A (ui[2:0]) | B (ui[5:3]) | Expected Display |
|-------------|-------------|-----------------|
| 000 (0)     | 000 (0)     | = (equal)        |
| 101 (5)     | 011 (3)     | > (greater than) |
| 010 (2)     | 110 (6)     | < (less than)    |
| 111 (7)     | 111 (7)     | = (equal)        |

## External hardware

- **7-segment display (common cathode):** Connected to outputs uo[0]–uo[7] (seg_a
  through seg_dp) to visually display the comparison result. No additional components
  are required as the current limiting and cathode grounding are handled on the board.
