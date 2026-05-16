<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Simple bandgap reference voltage generator based on the pseudo-PTAT current generator with enable gated startup included.

## Pind description
  # Input digital controls:
  ui[0]:  - enable to monitor "nout" on ua[0]
  ui[1]:  - enable to monitor "nc1" on ua[0]
  ui[2]:  - enable to monitor "vbgtop" on ua[0]
  ui[3]:  - enable to monitor "vbgmid" on ua[0]
  ui[4]:  - enable to monitor "vbgbot"" on ua[0]
  ui[5]: "enbgrbot" - enables the sartup circuit of the BGR on the BOTTOM side of the tile
  ui[6]: "enbgrmid" - enables the sartup circuit of the BGR on the MIDDLE side of the tile
  ui[7]: "enbgrtop" - enables the sartup circuit of the BGR on the TOP side of the tile

  # Outputs
  uo[0]: "enbbgrtop" - monitor the inverted version of ui[7] 

  # Analog pins
  ua[0]: "VREF_TT" - outputs the internal nodes baed on the selected digital inputs ui[0..4]

## How to test

When the 1.8V supply is applied the analog output ua[0]="VREF_TT" should provide a voltage level close to 1.2V with low temperature dependence if ui[6]='1  ui[3]='1.
The ena signal controls the refrence startup circuit in case the circuit won't start up togle ena='1.

## External hardware

Voltage measurement equipment is required to measure the output voltage.
