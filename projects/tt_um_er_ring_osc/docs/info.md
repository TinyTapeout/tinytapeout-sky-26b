<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project revolves around a simple 5 inverter ring oscillator, which is a test to see to what extend the (pex) simulation match the reality.
Some muxes are added to divide the frequency up to 2^8 times to allow observation from outside the chip.

The rsnt and ena allow the ring oscillator to start, the 2^8 divided result will be visible on OUT when SEL0 to SEL2 are LOW.

SEL0, SEL1 and SEL2 allow to select different divider outputs to be selected. See Table below:

| SEL[2:0] | Output Frequency |
|----------|------------------|
| 000      | f_osc/256        |
| 001      | f_osc/2          |
| 010      | f_osc/4          |
| 011      | f_osc/8          |
| 100      | f_osc/16         |
| 101      | f_osc/32         |
| 110      | f_osc/64         |
| 111      | f_osc/128        |

AO_BUF_EN is the signal to enable the buffer to output towards the analog pin. If not enabled the analog output is low, this is to prevent the supply to be pulled low, as the worse case analog pin load will pull down the supply significantly.


## How to test

Set SEL0, SEL1, SEL2 to 0, set rstn and ena high. Oscillation should be visable on OUT.

## External hardware

No external value needed.
