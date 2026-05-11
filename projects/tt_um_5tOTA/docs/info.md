# 5-Transistor OTA (External Compensation)

A compact, 1.8V single-stage operational transconductance amplifier (OTA) designed for the Sky130 process. This design utilizes external compensation to optimize silicon area while maintaining stable operation at 1.5 MHz.

## How it works

The circuit implements a classic 5-transistor topology:
- **Input Stage:** NMOS differential pair (M4, M6) for high transconductance.
- **Load Stage:** PMOS active current mirror (M2, M7).
- **Tail Current:** NMOS current source (M1) biased at 5µA.

By omitting the on-chip capacitor, the design minimizes the physical footprint within the Tiny Tapeout tile. This allows the dominant pole of the amplifier to be set externally, providing flexibility in bandwidth tuning and improved stability when driving off-chip loads.

## How to test

Testing requires external biasing and compensation to achieve the target 1.5 MHz bandwidth:

1.  **Power:** Apply 1.8V to **VDPWR** and connect **VGND** to a common ground.
2.  **Biasing:** Provide a 5µA reference current to the bias pin.
3.  **Compensation (Crucial):** Connect a **5pF to 10pF ceramic capacitor** between the output pin (e.g., `ua[2]`) and **VGND**. This sets the dominant pole and ensures the amplifier does not oscillate.
4.  **Signal Input:** Apply a differential signal to the inputs (e.g., `ua[0]` and `ua[1]`) with a common-mode voltage of 0.9V.
5.  **Observation:** Monitor the output on an oscilloscope using a high-impedance probe to verify gain and phase margin.

## External hardware

- **5pF - 10pF Capacitor (C0G/NP0):** Required for frequency compensation and stability.
- **5µA Current Source:** (Or a high-value resistor/potentiometer) to set the tail current.
- **Oscilloscope & Function Generator:** For AC characterization.
- **Breadboard or Carrier PCB:** To interface the Tiny Tapeout pins with discrete components.
