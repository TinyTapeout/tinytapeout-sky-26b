<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A Brokaw bandgap reference using SKY130 PNP BJTs. A PTAT current generator feeds a summing amplifier with OTA feedback to produce a stable ~1.2V reference voltage.

## How to test

Apply 1.8V VDD and measure ua[5] (Vref). Expected output is ~1.2-1.3V. Sweep temperature from -40°C to 125°C to characterize stability.

## External hardware

None.
