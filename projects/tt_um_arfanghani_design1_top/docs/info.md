<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design implements a simple water quality classification system using two internal engines.

Engine 1 extracts signal features from incoming sensor data:
- peak value detection
- running average
- signal variation tracking

Engine 2 classifies the water condition into three states:
- 00 = CLEAN water (low variation, low signal level)
- 01 = WARNING (moderate instability or contamination level)
- 10 = UNSAFE (high signal amplitude or instability)

The system does not require chemical analysis. Instead, it uses electrical signal behavior as a proxy for water quality.


## How to test

1. Run simulation using cocotb:
   make -B

2. View waveform:
   gtkwave tb.vcd

3. Test input behavior:
   - Set uio_in to low stable values → CLEAN output expected
   - Vary uio_in slowly → WARNING expected
   - Apply high constant or noisy values → UNSAFE expected

You can also use a function generator (FNIRSI) to simulate:
- sine wave = clean water
- distorted wave = warning
- square/noisy wave = unsafe

Connect generator output through a simple comparator or ADC stage into uio_in pins.


## External hardware

No external hardware required for simulation.

For lab testing:
- FNIRSI function generator
- optional comparator circuit
- optional Arduino or ADC interface to convert analog signal into 8-bit digital input
