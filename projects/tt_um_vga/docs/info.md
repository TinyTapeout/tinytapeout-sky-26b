# Multi-Mode Procedural VGA Graphics Engine

## How it works

This project generates real-time VGA graphics using purely arithmetic logic.
There is no framebuffer, no ROM, and no lookup tables — every pixel is computed
on-the-fly based on its position and a time counter.

At every pixel clock:

* The VGA controller provides `(hpos, vpos)`
* These are converted into centered coordinates `(cx, cy)`
* A radial approximation is computed using an octagonal norm
* A frame counter (`t`) acts as a time variable
* One of four rendering modes generates a pattern
* The pattern is mapped directly to RGB outputs (RGB222)

A 10-bit frame counter increments once per frame:

* Upper 2 bits select the rendering mode
* Lower bits provide animation over time

The result is a continuously evolving procedural graphics display.

---

## Rendering Modes

### Mode 0 — Radial Energy

* Concentric rings expanding outward
* Slight vortex distortion
* Smooth animated motion

### Mode 1 — Plasma

* Diagonal flowing gradients
* Continuous color blending
* Classic demoscene-style effect

### Mode 2 — Interference

* Grid-like wave patterns
* Crossed coordinate interaction
* Structured geometric visuals

### Mode 3 — Chaos

* Nonlinear bitwise patterns
* Rapidly changing textures
* High visual complexity

---

## Output

* Resolution: 640×480 (VGA)
* Color: RGB222 (2 bits per channel)
* Fully real-time procedural rendering

---

## How to test

1. Connect a VGA monitor via TinyTapeout VGA PMOD
2. Provide a 25 MHz clock (approx 25.175 MHz)
3. Release reset (`rst_n`)
4. The display will automatically:

   * Start rendering
   * Cycle through all 4 modes
   * Continuously animate

**Expected output:**
A full-screen animated display cycling through procedural patterns:
rings → plasma → interference → chaos.
