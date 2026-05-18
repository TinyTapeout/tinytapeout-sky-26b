<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project revolves around a simple 7 inverter ring oscillator, which is a test to see to what extend the (pex) simulation match the reality.
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

### Pins:

#### Inputs `ui_in`

| PIN | Internally Connected to  | Description                                      |
|-----|------------|--------------------------------------------------|
| ui_in[0]   | SEL0       | Frequency divider select, bit 0                  |
| ui_in[1]   | SEL1       | Frequency divider select, bit 1                  |
| ui_in[2]   | SEL2       | Frequency divider select, bit 2                  |
| ui_in[3]   | uio_oe[0]         | Debugging           |
| ui_in[4]   | uio_out[0]          | Debugging                |
| ui_in[5]   | uo_out[1]          | Debugging                |
| ui_in[6]   | —          | —              |
| ui_in[7]   | AO_BUF_EN  | Enable analog output buffer (1 = enabled)        |

#### Outputs `uo_out`

| PIN | Internally connected to | Description                                             |
|-----|------|---------------------------------------------------------|
|uo_out[0]   | OUT  | Divided oscillator output, frequency set by SEL[2:0]   |
| uo_out[1] | ui_in[5] | Debugging
|uo_out[2] | clk | Tiny Tapeout Clock (not used for design, routed to uo_out[2])
|uo_out[3] | uio_in[1] | Debugging 
|uo_out[4] | — | NC (Pulled to Ground)
|uo_out[5] | — | NC (Pulled to Ground)
|uo_out[6] | — | NC (Pulled to Ground)
|uo_out[7] | — | NC (Pulled to Ground)

#### Bidirectional `uio`

##### `uio_oe` (Output Enable)

| PIN | Value | Description |
|-----|-------|-------------|
| uio_oe[0] | ui_in[3] | Debugging |
| uio_oe[1] | — | NC (Pulled to Ground) |
| uio_oe[2] | — | NC (Pulled to Ground) |
| uio_oe[3] | — | NC (Pulled to Ground) |
| uio_oe[4] | — | NC (Pulled to Ground) |
| uio_oe[5] | — | NC (Pulled to Ground) |
| uio_oe[6] | — | NC (Pulled to Ground) |
| uio_oe[7] | — | NC (Pulled to Ground) |

##### `uio_out` (Output)

| PIN | Internally Connected to | Description |
|-----|-------------------------|-------------|
| uio_out[0] | ui_in[4] | — |
| uio_out[1] | — | NC (Pulled to Ground) |
| uio_out[2] | — | NC (Pulled to Ground) |
| uio_out[3] | — | NC (Pulled to Ground) |
| uio_out[4] | — | NC (Pulled to Ground) |
| uio_out[5] | — | NC (Pulled to Ground) |
| uio_out[6] | — | NC (Pulled to Ground) |
| uio_out[7] | — | NC (Pulled to Ground) |

##### `uio_in` (Input)

| PIN | Internally Connected to | Description |
|-----|-------------------------|-------------|
| uio_in[0] | — | NC |
| uio_in[1] | — | uo_out[3] |
| uio_in[2] | — | NC |
| uio_in[3] | — | NC |
| uio_in[4] | — | NC |
| uio_in[5] | — | NC |
| uio_in[6] | — | NC |
| uio_in[7] | — | NC |

#### Analog `ua`

| Pin  | Name | Description                                                  |
|------|------|--------------------------------------------------------------|
| ua[0]| AO   | Analog oscillator output via digital buffer (see AO_BUF_EN) |
| ua[1–7] | — | Unused/NC                                                    |

#### Standard TinyTapeout signals

| PIN | Description                                         |
|--------|-----------------------------------------------------|
| clk    | Unused                                              |
| rstn  | Active-low reset|
| ena    | Active-high enable |


## How to test

Set SEL0, SEL1, SEL2 to 0, set rstn and ena high. Oscillation should be visible on OUT.

Set AO_BUF_EN high, and the signal will also be visible on ua[0]

## External hardware

No external hardware needed.
