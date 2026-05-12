<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a lightweight  S-box using composite field arithmetic. It performs the non-linear transformation required for the smaller 4-bit operations.

## How to test

After reset, provide an input value to `ui_in[3:0]`. The corresponding S-box output will appear on `uo_out[3:0]`. You can verify the mapping against the standard AES S-box table or the specific implementation logic defined in the testbench.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
