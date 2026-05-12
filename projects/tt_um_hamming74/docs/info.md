# Hamming(7,4) Encoder / Decoder

## How it works

This project implements a **Hamming(7,4) error-correcting code** system.
The circuit can **encode 4-bit data into a 7-bit Hamming codeword** and **decode a received codeword while detecting and correcting a single-bit error**.

The design operates in two modes controlled by the `MODE` input.

### Encode mode

When `MODE = 0`, the chip encodes the input data bits into a 7-bit Hamming codeword.

Data bits are mapped as:

D1 = ui[0]
D2 = ui[1]
D3 = ui[2]
D4 = ui[3]

The encoder generates three parity bits:

P1 = D1 ⊕ D2 ⊕ D4

P2 = D1 ⊕ D3 ⊕ D4

P4 = D2 ⊕ D3 ⊕ D4

The final codeword structure is:

P1 P2 D1 P4 D2 D3 D4

This 7-bit encoded word is produced on `uo[6:0]`.

### Decode mode

When `MODE = 1`, the chip interprets `ui[6:0]` as a received Hamming codeword.

The circuit computes a **syndrome** using parity checks:

S1 = C1 ⊕ C3 ⊕ C5 ⊕ C7

S2 = C2 ⊕ C3 ⊕ C6 ⊕ C7

S4 = C4 ⊕ C5 ⊕ C6 ⊕ C7

The syndrome `{S4,S2,S1}` indicates the position of a single-bit error.
If an error is detected, the corresponding bit is flipped to correct the codeword.

The corrected codeword is output on `uo[6:0]`, and the error status is reported on `uo[7]`.

---

## How to test

### Encoding test

1. Set `MODE = 0`
2. Provide 4-bit data on `ui[3:0]`

Example:

Input data
`D = 1011`

The encoder will generate the corresponding **7-bit Hamming codeword** on `uo[6:0]`.

---

### Decoding test

1. Set `MODE = 1`
2. Provide a 7-bit codeword on `ui[6:0]`

Example:

Original codeword
`1011101`

Introduce an error (flip one bit):

`1011001`

Apply this value to the inputs.

The circuit will:

* detect the error
* correct the flipped bit
* output the corrected codeword on `uo[6:0]`
* set `uo[7] = 1` to indicate an error was detected

---

## External hardware

No external hardware is required.
* **Input switches** for `ui[7:0]`
* **LEDs** connected to `uo[7:0]` to observe the encoded or corrected output.
