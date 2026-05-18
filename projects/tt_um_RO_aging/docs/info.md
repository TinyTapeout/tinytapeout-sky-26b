<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The circuit consists of a 13-stage Ring Oscillator (RO). This design is developed to evaluate silicon aging phenomena, focusing on measuring performance degradation caused by key reliability mechanisms: Bias Temperature Instability (BTI) and Hot Carrier Injection (HCI).

The oscillator core comprises 13 inverting stages connected in a closed loop. To ensure symmetrical oscillation characteristics and accurate degradation modeling, the constituent inverters are tailored to maintain equal rise and fall times under nominal operating conditions. 

Because the fundamental oscillation frequency ($f_{osc}$) of a 13-stage loop is relatively high, direct off-chip measurement would introduce severe parasitic loading and signal degradation. To resolve this, a 12-stage frequency divider is integrated into the signal path. This divider scales down the native frequency by a factor of $2^{12} = 4096$, shifting the signal to a lower frequency range that can be easily captured by standard laboratory instruments. 

## How to test

1. **Power Supply Setup:** Nominal regulated DC voltage of 1.8V to the $V_{DD}$.
2. **Enable Oscillation:** Apply a logic HIGH signal to the enable pin to close the feedback loop and initiate oscillation.
3. **Signal Acquisition:** Connect a low-capacitance measurement probe to the output pin to observe the divided clock signal on an oscilloscope or a frequency counter.
4. **Frequency Calculation:** Determine the actual native frequency of the internal ring oscillator ($f_{osc}$) by multiplying the measured output frequency ($f_{out}$) by the division factor:
   $$f_{osc} = f_{out} \times 4096$$
5. **Reliability Characterization (Stress Testing):** To accelerate aging via BTI and HCI, subject the circuit to a controlled stress phase by applying an elevated supply voltage ($V_{DD\_stress} > 1.8V$) for a specified time interval. After the stress interval, return the supply voltage to the nominal 1.8V and measure the resulting reduction in frequency ($\Delta f_{osc}$) to quantify degradation.

## External hardware

* **Digital Oscilloscope** Instrument with adequate bandwidth to capture the divided output signal.
* **Signal Generator or Logic Switch:** Source to toggle and control the state of the digital enable input pin.
