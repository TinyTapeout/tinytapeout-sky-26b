# Trinity Phi — 1x1 phi-anchor GF16 dot4 + Lucas POST

Single-tile Trinity GF16 dot product N=4 accelerator with Lucas-number Power-On-Self-Test and CLARA Gap-4 bounded-rationality restraint. The phi-anchor 1x1 sibling of the Trinity TTSKY26b triad.

## How it works

The design computes a 4-element dot product in GF16 (Golden Float 16-bit) format:
- 4 parallel GF16 multipliers in shift-and-add form, zero standalone star operators in synthesisable RTL
- 3 GF16 adders in tree reduction: p0+p1 then p2+p3 then s01+s23 to result
- GF16 format: 1 sign + 6 exponent (bias=31) + 9 mantissa
- Lucas L2 to L7 POST proves phi squared plus phi inverse squared equals 3
- HW RNG LFSR, restraint controller, sacred constants ROM, Crown47 ROM, friend-foe handshake

On reset the chip drives the canonical dot4(1, 2, 3, 4) (1, 2, 3, 4) = 30.0 = 0x47C0 onto the output pins. This is the cross-die anchor identical to the Euler and Gamma siblings.

## How to test

After reset, the output should show:
- uo_out  = 0xC0 (result low byte)
- uio_out = 0x47 (result high byte)

Combined: 0x47C0 = GF16(30.0).

To read POST status, drive ui_in[3] and ui_in[2] high to expose phi_post_ok, phi_post_done, and the active Lucas value on the output pins.

To probe the Lucas ROM, select lucas_idx[2:0] on ui_in[3:1] (only one of bits 2 or 3 high at a time) to read L2 to L7.

## External hardware

No external hardware required. Directly observable on the output pins.
