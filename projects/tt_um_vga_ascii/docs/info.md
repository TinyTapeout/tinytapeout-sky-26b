<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design uses a standard 640x480 VGA timing generator paired with a hardware state machine to manage a sequential typewriter animation effect. The rendering engine relies entirely on synthesized combinatorial logic to map a grid of macro-characters, utilizing a coordinate-based spatial hash (PRNG) to generate a pseudo-random, flickering matrix of tiny green ASCII characters within each block.

## How to test

Connect a standard Tiny Tapeout VGA PMOD to the dedicated output pins and ensure the system clock (clock_hz in info.yaml) is set to exactly 25 MHz. Plug in a standard VGA monitor to watch the phrase "As Above, So Below" type out on the screen, pause, erase in reverse, and loop, complete with a blinking underscore cursor.


