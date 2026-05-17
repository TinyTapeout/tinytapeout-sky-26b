# TRI-1 Phi — Trinity φ-anchor 1×1 Lucas POST + CLARA Gap-4

Smallest SKU of the TRI-1 Triad (φ-anchor / e-engine / γ-surface) — a single-tile Trinity GF16(2^4) ternary dot4 MAC with enhanced safety. φ-anchor is the canonical 1×1 foundation of the triad.

## How it works

The design computes a 4-element dot product in GF16(2^4) format and exposes a Lucas-number Power-On-Self-Test (POST) plus CLARA Gap-4 bounded-rationality restraint:

- 4 parallel GF16 multipliers in shift-and-add form (R-SI-1: zero `*` operators in synthesisable RTL)
- 3 GF16 adders in tree reduction: p0+p1 → s01, p2+p3 → s23, s01+s23 → result
- GF16 format: 1 sign + 6 exponent (bias=31) + 9 mantissa
- On reset the chip drives the canonical dot4(1.0,2.0,3.0,4.0) = **0x47C0** directly onto {uio_out, uo_out}
- This is the cross-die anchor identical to e-engine (tt-trinity-euler) and γ-surface (tt-trinity-gamma) — TG-TRIAD-X ledger (PhD Theorem 36.1)

Enhanced modules:
- `phi_anchor_post` — Lucas L₂..L₇ POST proving φ² + φ⁻² = 3
- `lucas_rom` — addressable L_n host probe
- `hwrng_lfsr` — die-unique nonce
- `restraint_ctrl` — CLARA Gap-4 bounded rationality
- `sacred_constants_rom` — 75 PhD constants
- `crown47_rom` — Trinity constants
- `trinity_friend_foe` — friend/foe handshake

## How to test

After reset (canonical/idle mode, `ui_in = 0x00`):
- `uo_out`  = 0xC0 (result low byte)
- `uio_out` = 0x47 (result high byte)
- Combined: **0x47C0** = GF16(30.0) = dot4(1,2,3,4) · (1,2,3,4)

POST status read-out: drive `ui_in[3] & ui_in[2] = 1` to expose `phi_post_ok`, `phi_post_done`, and the active Lucas value on the output pins. In all other modes the canonical anchor remains stable.

Lucas ROM probe: select `lucas_idx[2:0]` on `ui_in[3:1]` (only one of bits 2/3 high at a time) to read L₂..L₇.

## External hardware

No external hardware required. Directly observable on the output pins.

Anchor invariant: φ² + φ⁻² = 3.
DOI: [10.5281/zenodo.19227877](https://doi.org/10.5281/zenodo.19227877)
