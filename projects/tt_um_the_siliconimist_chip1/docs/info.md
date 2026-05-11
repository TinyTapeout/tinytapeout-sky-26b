<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is our "hello world" of silicon, a one-digit 7-segment seconds counter,
built in Verilog after first prototyping the idea on
[Wokwi](https://wokwi.com/). It counts 0 to 9, once per second and wraps back to
0; pressing the reset button on the TT demo board snaps it back to 0
immediately.  It is a simple design, but it is our first silicon design project, ever (in Verilog, at least), we pray it works.

Internally the design is three stages:

1. **Clock divider.** The TT demo board feeds a 50 MHz clock into our chip. A
   26-bit counter divides that down by 50,000,000 to produce a one-cycle-wide
   `tick` pulse at 1 Hz. The divisor is a Verilog parameter (`CLK_DIV`) so the
   testbench can override it to 10 and run a "second" in 10 ns of simulation
   time.
2. **Digit counter.** A 4-bit register advances by 1 on every `tick` and wraps
   from 9 back to 0. Reset (`rst_n` low) forces it to 0 on the next clock edge.
3. **7-segment decoder.** A purely combinational `case` statement maps the
   current digit to the seven segment-control bits on `uo_out[6:0]`. `uo_out[7]`
   is the decimal point and is always held low.

We are learning as we go and writing the journey up including what each stage does, why we made the
choices we did, and where we got stuck,
[siliconimist.com](https://siliconimist.com).

## How to test

We hope you can just plug this into the TT demo board and it will work. After
selecting the design and powering it up (we pray this happens):

- The 7-segment display should immediately show `0`.
- The digit should advance by one every second: `0, 1, 2, . . . 9, 0, 1, . . .` etc . . .
- Pressing the reset button should snap the display back to `0` and start the count over from there once you release the button we hope that goes on the pcb . . . if we read the docs right?

If you are running the design in simulation rather than on hardware, the cocotb testbench in `test/` exercises the same behaviour with `CLK_DIV` set to 10 so that each simulated "second" only takes 10 clock cycles. See [test/README.md](../test/README.md) for more on the crappy tests we wrote to test this hardware (and inshallah cover enough to make it work).

## External hardware

The project drives the 7-segment display already present on the [Tiny Tapeout demo board](https://tinytapeout.com/specs/) - no extra parts are required. The output pins map to the display as follows:

| Pin        | Segment |
| ---------- | ------- |
| `uo_out[0]` | A (top)         |
| `uo_out[1]` | B (top right)   |
| `uo_out[2]` | C (bottom right)|
| `uo_out[3]` | D (bottom)      |
| `uo_out[4]` | E (bottom left) |
| `uo_out[5]` | F (top left)    |
| `uo_out[6]` | G (middle)      |
| `uo_out[7]` | DP (decimal point) |

All `ui_in` and `uio` pins are unused; the bidirectional IOs are configured as inputs and their outputs are driven low.

## Check out more thoughts

I have a lot of thoughts on open source silicon, and I'm writing them up as I go, including what each stage does, what we found funny, and where I got stuck.  Check it out on [siliconimist.com](https://siliconimist.com).

[![Siliconimist Chip1](TheSiliconimist.png)](https://siliconimist.com)