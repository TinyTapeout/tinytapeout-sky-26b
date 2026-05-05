## How it works

Rule 30 is a 1D cellular automaton discovered by Stephen Wolfram in 1983.
Despite having only one simple rule — `new_cell = left XOR (centre OR right)` —
it produces behaviour so chaotic it was used as Mathematica's built-in
random number generator for many years.

This design implements Rule 30 directly in silicon:
- A 320-bit register stores the current generation
- Every row of pixels, all 320 cells update simultaneously in parallel
- Each frame starts from a single seed cell at position 160 (centre)
- 480 rows = 480 generations of chaotic evolution displayed top to bottom
- Each cell maps to 2 horizontal pixels (320 cells × 2 = 640px wide)

The result is the famous asymmetric triangular chaos pattern that expands
from the centre of the screen downward.

**Colour palettes (ui_in[1:0]):**
- `00` = Green on black (classic terminal)
- `01` = Fire (yellow → orange → red with depth)
- `10` = Cyan / Blue
- `11` = Rainbow (colour changes with row depth)

## How to test

1. Connect a VGA monitor via the Tiny VGA Pmod (connect to uo_out pins)
2. Set clock to 25 MHz
3. Assert and release reset (rst_n)
4. You should see a triangle of chaos expanding from centre-top of screen
5. Toggle ui_in[0] and ui_in[1] to cycle through colour palettes

**Expected output:** A triangular pattern of black and coloured pixels
expanding from a single point at the top centre, filling the entire screen
with chaotic but deterministic cellular automaton evolution.
