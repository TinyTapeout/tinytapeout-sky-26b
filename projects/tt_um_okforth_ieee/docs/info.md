<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

SUBLEQ (SUbtract and Branch if Less than or EQual to zero) is a type of OISC (One Instruction Set Computer) architecture.

It has only one instruction of the form:
```
SUBLEQ A B C
```

Equivalent to this pseudocode:
```
mem[B] = mem[B] - mem[A]
if mem[B] <= 0 then goto C\
```

By compounding instructions it is capable of doing other operations, such as addition.

## How to test

This module requires a RP2040 or similar connected to the input and output ports to act as an external 16-bit memory (RAM).

A read request from the CPU triggers the "read_latch" ouput for one cycle, with the first LSB (least significant byte) sent via the output pins.
Which is followed by the MSB (most significant byte) in the next cycle. The CPU expects the contents of the address to be returned via the input pins in the same order.

Similarly, a write request from the CPU triggers the "write_latch" output for one cycle, in the same manner as above. However with an additional 2 cycles for the value to assign at the address. The CPU does not expect a value from the input ports.

## External hardware

RP2040
