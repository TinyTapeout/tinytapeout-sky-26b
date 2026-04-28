# Bandgap Reference Overview

This project implements a **bandgap reference (BGR)** in the Sky130 process to generate a stable voltage of approximately **0.9V**, independent of temperature and supply variations.

## Architecture
The below figure shows conceptual block diagram of BGR.

![block](bgr_block.svg)

The design consists of:

* PTAT current generation
* CTAT voltage component
* Current mirror
* Final stage to convert current to voltage

These components combine to produce a temperature-independent reference voltage.

## Key Features

* Technology: Sky130 (1.8V)
* Output: ~0.9V
* Fully custom layout
* Post-layout verified

## Tiny Tapeout Integration

* VREF is exposed via `ua[0]` (analog output)

## Notes

* Output is unbuffered
* External loading may affect accuracy
* Intended for characterization and demonstration

## Results Summary
- VREF ≈ 0.9V
- Temp coefficient ≈ 20–40 ppm/°C
- Post-layout verified
