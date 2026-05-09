<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A 4x4 matrix multiply accelerator controlled via SPI:

- `A` matrix elements are unsigned 8-bit.
- `B` matrix elements are ternary weights encoded in 2 bits (`00=0`, `01=+1`, `10=-1`, `11` treated as `0`).
- The datapath removes multiplication and uses add/sub/skip only.
- Two parallel compute lanes (`PE=2`) process two output elements at once.

Latency for one full `4x4` result is `32` compute cycles (`(16 outputs / 2 lanes) * 4 k-steps`), not including SPI transfer overhead.

The SPI command byte format is: `{R/W[7], SEL[6:5], ROW[4:3], COL[2:1], 0}`

- **SEL=00**: Write matrix A element (1 data byte)
- **SEL=01**: Write matrix B element (1 data byte, only bits `[1:0]` are used as ternary code)
- **SEL=10**: Control/status. Write bit 0 to start. Read returns `{6'b0, done, busy}`.
- **SEL=11**: Read matrix C element (3 bytes out, MSB first, signed 20-bit two's-complement result in the lower 20 bits)

The accumulator is 20 bits wide. For ternary weights, the dot-product range per element is `[-1020, +1020]`.

## How to test

Connect an SPI master (e.g. microcontroller or RP2040 on the TT demo board) to the SPI pins:

1. Load matrix A by sending write commands with SEL=00 for each element A[row][col].
2. Load matrix B by sending write commands with SEL=01 for each element B[row][col] using ternary encoding (`00=0`, `01=+1`, `10=-1`).
3. Start computation by writing 0x01 to the control register (SEL=10).
4. Poll the status register (read SEL=10) until the done bit (bit 1) is set.
5. Read results from C[row][col] using read commands with SEL=11 (3 bytes per element).

## External hardware

SPI master (directly from the RP2040 on the TT demo board, or any external microcontroller).
