<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Tiny Crypto Core

Tiny Crypto Core is a lightweight 64-bit symmetric encryption/decryption demo core designed for Tiny Tapeout. The design uses an 8-bit serial input/output interface to fit within the Tiny Tapeout 1x1 tile constraints.

## How it works

The design stores a 64-bit data block and a 32-bit key internally. Since Tiny Tapeout provides 8-bit dedicated inputs and 8-bit dedicated outputs, both the plaintext/ciphertext and the key are loaded byte by byte.

The control pins are provided through `uio_in`:

- `uio_in[2:0]`: byte address
- `uio_in[3]`: load data byte
- `uio_in[4]`: load key byte
- `uio_in[5]`: start operation
- `uio_in[6]`: mode select, `0` for encryption and `1` for decryption
- `uio_in[7]`: output select, `0` for status and `1` for data read

The data byte to be loaded is provided on `ui_in[7:0]`.

When the `start` signal is asserted, the module generates a 64-bit keystream from the 32-bit key. The keystream is mixed for 16 clock cycles using rotation, addition, XOR, and round constants. At the end of the operation, the stored 64-bit data block is XORed with the final keystream.

Encryption and decryption use the same operation:

```text
ciphertext = plaintext XOR keystream
plaintext  = ciphertext XOR keystream 