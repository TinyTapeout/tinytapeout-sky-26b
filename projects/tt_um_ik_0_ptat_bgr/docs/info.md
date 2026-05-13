<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Simple bandgap reference voltage generator based on the pseudo-PTAT current generator with enable gated startup included.

## How to test

When the 1.8V supply is applied the analog output ua[0]="vref" should provide a voltage level close to 1.2V with low temperature dependence.
The ena signal controls the refrence startup circuit in case the circuit won't start up togle ena='1.

## External hardware

Voltage measurement equipment is required to measure the output voltage.
