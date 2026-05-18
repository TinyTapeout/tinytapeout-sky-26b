<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This project generates a 640×480 VGA signal and renders a small demo scene. Three 128×128 monochrome logos bounce around the screen with per‑frame physics, changing direction on screen edges and swapping motion parameters on collisions. A parallax checkerboard background scrolls at multiple speeds, and an optional ripple effect warps the background and tints alternating rings. Color cycling on bounces is also optional.

Key blocks:
- `hvsync_generator.v`: VGA timing + pixel coordinates
- `bitmap_rom.v`: 128×128 logo sprite ROM
- `palette.v`: 3‑bit color index → 2‑bit-per‑channel RGB
- `project.v`: compositing, effects, and logo motion

## How to test
Run the cocotb testbench to render a few frames and (optionally) compare against reference images:

```zsh
cd /Users/macbook/chip_dev/sharc/sharc_ip/tiny-demoscene/test
make -B
```

## External hardware
VGA monitor connected to the Tiny Tapeout VGA-compatible outputs.
