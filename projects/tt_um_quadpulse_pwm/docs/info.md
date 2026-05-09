<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

QuadPulse generates 4 independent, jitter-free PWM signals for servo and DC motor control.
It uses a 10 MHz system clock divided into a configurable PWM period, with a phase accumulator
ramp giving 8-bit (256-step) duty cycle resolution at all frequencies.

A 3-wire SPI interface accepts 16-bit frames (2-bit channel address + 8-bit duty value) to
load duty cycles at runtime without CPU involvement. A hardware emergency stop pin
(ui_in[0]) instantly forces all outputs to zero via combinational logic — no latency.

All SPI inputs pass through 2-stage flip-flop synchronisers to prevent metastability from
the asynchronous SPI clock domain. The frequency selector is registered to suppress DIP
switch bounce. Four frequency modes are supported: 50 Hz (hobby servos), 1 kHz, 10 kHz,
and 20 kHz (silent motor drivers).

## How to test

Set the frequency with ui_in[2:1]: 00=50 Hz, 01=1 kHz, 10=10 kHz, 11=20 kHz.

Send a 16-bit SPI frame via uio[0] (MOSI), uio[1] (SCLK), uio[2] (CS_N active-low):
- Bits [15:14]: channel address (00=CH0, 01=CH1, 10=CH2, 11=CH3)
- Bits [13:8]: reserved (send as 0)
- Bits [7:0]: duty cycle (0=0%, 127=50%, 255=100%)

Observe PWM outputs on uo_out[3:0]. Connect an LED through a 470 ohm resistor to uo_out[0]
to see duty cycle as brightness without an oscilloscope. Set ui_in[0]=1 to trigger
emergency stop (all outputs go to 0 immediately, uo_out[4] goes HIGH).

Run the cocotb simulation test suite with `cd test && make`

## External hardware

- Hobby servo (SG90 or equivalent) on uo_out[0..3] at 50 Hz
- DC motor + PWM driver module (e.g., L298N) at 1-20 kHz
- LED + 470 ohm resistor for visual duty cycle demo (no oscilloscope needed)
- Any MCU (STM32, ESP32, RP2040) as SPI master
