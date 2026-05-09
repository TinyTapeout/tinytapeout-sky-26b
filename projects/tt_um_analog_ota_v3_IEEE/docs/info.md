<<<<<<< HEAD
<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
## How it Works
This project features a **Unity-Gain Buffer** based on a **Two-Stage Miller OTA**, integrated with a **Beta-Multiplier Reference (BMR)** and a **Startup Circuit**, all implemented in the **Skywater 130nm (sky130)** PDK. Ultimately, this buffer serves as the foundational building block for a complete, continuous-time **Gm-C (Transconductor-Capacitor) Filter** system currently under development.

### 1. Unity-Gain Configuration & Core Performance
At its core, the Two-Stage Miller OTA provides a high **open-loop gain of over 60 dB**. To create the buffer configuration, the inverting input is directly hardwired to the output ($V_{out}$) in a strict negative feedback loop. This transforms the internal differential amplifier into a **single-input, single-output** voltage follower.
*   **Precision Tracking & Fast Slew:** The >60 dB open-loop gain minimizes the steady-state error, ensuring the closed-loop voltage gain is extremely close to unity ($A_v \approx 1$). Furthermore, the circuit achieves a strong simulated **Slew Rate of 18.65 V/µs** for rapid signal settling.
*   **Load Drive Capability:** The transconductance ($g_m$) of the second stage and the compensation network are carefully sized to stably drive a **3 pF capacitive load** without degrading performance, maintaining a highly stable **Phase Margin of > 65°**.

### 2. Miller Compensation with Active Lead Resistor
Driving a capacitive load in a unity-gain configuration is the most demanding condition for stability. To address this:
*   **Lead Compensation:** A Miller compensation capacitor and a nulling resistor are placed between the differential input stage and the common-source gain stage. This breaks the unwanted high-frequency feedforward path, pushing the non-dominant pole to higher frequencies and neutralizing the Right-Half-Plane (RHP) zero.
*   **Area Efficiency:** Instead of using a massive passive resistor, the lead resistance is implemented using an **active MOS transistor biased in the linear (triode) region**. This secures an adequate phase margin to prevent oscillation while drastically saving valuable silicon area on the TinyTapeout frame.

### 3. Self-Biasing & Future Gm-C Integration
The circuit is entirely self-contained, operates without an external bias current source, and is highly power-efficient (consuming ~**162.7 µW** total):
*   **Beta-Multiplier Reference (BMR):** Internally generates a stable reference current ($I_{ref}$), rendering the OTA's biasing largely independent of supply voltage ($V_{DD}$) variations.
*   **Startup Circuit:** Guarantees that upon power-up, the BMR is forced out of its degenerate zero-current state and reliably reaches its target operating point immediately as the 1.8V power rail stabilizes.
*   **Shared Biasing for Gm-C Filter:** As this project expands into a full Gm-C filter, a second OTA will be introduced. This upcoming OTA will share this exact same BMR network. This shared-bias strategy ensures matched $g_m$ behavior across the entire filter while keeping total power and layout footprint strictly minimized.

The entire system is optimized for the TinyTapeout platform, focusing on robust analog performance and layout efficiency within the 1.8V domain.


## How to test

To rigorously verify the buffer's performance, stability, and self-biasing mechanics, follow these testing procedures:

*   **Load Setup:** Ensure a target **3 pF capacitive load** is connected to the output pin. 
    *   *Important Note for Physical Testing:* Strictly account for the parasitic capacitance introduced by oscilloscope probes, breadboards, or PCB traces. Standard passive probes can easily introduce 10-15 pF of capacitance, which may alter the phase margin and cause unexpected ringing. Use low-capacitance probes or adjust external capacitors accordingly.
*   **Pulse & Transient Test (Slewing & Settling):** 
    *   Apply a square wave pulse signal at the single analog input pin, with voltage levels stepping between **0.5V and 1.0V**.
    *   Run a **1 µs transient measurement** (or simulation) to observe the large-signal slewing and small-signal settling behavior. 
    *   *Verification:* The output must accurately track the input. You should observe a fast response (correlating to the simulated **18.65 V/µs** slew rate). Crucially, the signal must settle without sustained ringing or oscillation. This confirms the stability of the lead-compensation network and the >65° phase margin under load.
*   **DC Precision Tracking:** Slowly sweep the DC input voltage across the operating range. Verify that the output tracks the input with minimal steady-state error ($V_{out} \approx V_{in}$), which physically validates the high **> 60 dB open-loop gain** of the internal OTA.
*   **Power-Up & Startup Test:** Ramp the $V_{DD}$ supply rail from **0V to 1.8V**. Monitor the circuit's response to confirm that the **Startup Circuit** successfully kicks the Beta-Multiplier Reference (BMR) out of its degenerate zero-current state and reliably establishes the nominal operating point.


## External hardware

Signal Generator / Oscillator: To provide the 0.4V - 1.0V pulse and AC input signals.

DC Power Supply: Stable 1.8V source for the VDD rail.

Oscilloscope: To simultaneously monitor the input and output waveforms, confirming tracking accuracy and settling time.

Capacitor: A discrete 3 pF capacitor acting as the load.

Multimeter: For observing DC bias levels and verifying total current consumption.
=======
<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
## How it Works
This project features a **Unity-Gain Buffer** based on a **Two-Stage Miller OTA**, integrated with a **Beta-Multiplier Reference (BMR)** and a **Startup Circuit**, all implemented in the **Skywater 130nm (sky130)** PDK. Ultimately, this buffer serves as the foundational building block for a complete, continuous-time **Gm-C (Transconductor-Capacitor) Filter** system currently under development.

### 1. Unity-Gain Configuration & Core Performance
At its core, the Two-Stage Miller OTA provides a high **open-loop gain of over 60 dB**. To create the buffer configuration, the inverting input is directly hardwired to the output ($V_{out}$) in a strict negative feedback loop. This transforms the internal differential amplifier into a **single-input, single-output** voltage follower.
*   **Precision Tracking & Fast Slew:** The >60 dB open-loop gain minimizes the steady-state error, ensuring the closed-loop voltage gain is extremely close to unity ($A_v \approx 1$). Furthermore, the circuit achieves a strong simulated **Slew Rate of 18.65 V/µs** for rapid signal settling.
*   **Load Drive Capability:** The transconductance ($g_m$) of the second stage and the compensation network are carefully sized to stably drive a **3 pF capacitive load** without degrading performance, maintaining a highly stable **Phase Margin of > 65°**.

### 2. Miller Compensation with Active Lead Resistor
Driving a capacitive load in a unity-gain configuration is the most demanding condition for stability. To address this:
*   **Lead Compensation:** A Miller compensation capacitor and a nulling resistor are placed between the differential input stage and the common-source gain stage. This breaks the unwanted high-frequency feedforward path, pushing the non-dominant pole to higher frequencies and neutralizing the Right-Half-Plane (RHP) zero.
*   **Area Efficiency:** Instead of using a massive passive resistor, the lead resistance is implemented using an **active MOS transistor biased in the linear (triode) region**. This secures an adequate phase margin to prevent oscillation while drastically saving valuable silicon area on the TinyTapeout frame.

### 3. Self-Biasing & Future Gm-C Integration
The circuit is entirely self-contained, operates without an external bias current source, and is highly power-efficient (consuming ~**162.7 µW** total):
*   **Beta-Multiplier Reference (BMR):** Internally generates a stable reference current ($I_{ref}$), rendering the OTA's biasing largely independent of supply voltage ($V_{DD}$) variations.
*   **Startup Circuit:** Guarantees that upon power-up, the BMR is forced out of its degenerate zero-current state and reliably reaches its target operating point immediately as the 1.8V power rail stabilizes.
*   **Shared Biasing for Gm-C Filter:** As this project expands into a full Gm-C filter, a second OTA will be introduced. This upcoming OTA will share this exact same BMR network. This shared-bias strategy ensures matched $g_m$ behavior across the entire filter while keeping total power and layout footprint strictly minimized.

The entire system is optimized for the TinyTapeout platform, focusing on robust analog performance and layout efficiency within the 1.8V domain.


## How to test

To rigorously verify the buffer's performance, stability, and self-biasing mechanics, follow these testing procedures:

*   **Load Setup:** Ensure a target **3 pF capacitive load** is connected to the output pin. 
    *   *Important Note for Physical Testing:* Strictly account for the parasitic capacitance introduced by oscilloscope probes, breadboards, or PCB traces. Standard passive probes can easily introduce 10-15 pF of capacitance, which may alter the phase margin and cause unexpected ringing. Use low-capacitance probes or adjust external capacitors accordingly.
*   **Pulse & Transient Test (Slewing & Settling):** 
    *   Apply a square wave pulse signal at the single analog input pin, with voltage levels stepping between **0.5V and 1.0V**.
    *   Run a **1 µs transient measurement** (or simulation) to observe the large-signal slewing and small-signal settling behavior. 
    *   *Verification:* The output must accurately track the input. You should observe a fast response (correlating to the simulated **18.65 V/µs** slew rate). Crucially, the signal must settle without sustained ringing or oscillation. This confirms the stability of the lead-compensation network and the >65° phase margin under load.
*   **DC Precision Tracking:** Slowly sweep the DC input voltage across the operating range. Verify that the output tracks the input with minimal steady-state error ($V_{out} \approx V_{in}$), which physically validates the high **> 60 dB open-loop gain** of the internal OTA.
*   **Power-Up & Startup Test:** Ramp the $V_{DD}$ supply rail from **0V to 1.8V**. Monitor the circuit's response to confirm that the **Startup Circuit** successfully kicks the Beta-Multiplier Reference (BMR) out of its degenerate zero-current state and reliably establishes the nominal operating point.
## Simulation Results

| Corner | Temp (°C) | Unity-Gain Frequency (Hz) | Phase Margin (°) |
|--------|:---------:|:-------------------------:|:----------------:|
| TT     | -27       | 13,098,400                | 67.11            |
| TT     | 25        | 11,107,500                | 67.36            |
| TT     | 125       | 8,208,920                 | 70.01            |
| SS     | -27       | 20,187,100                | 47.72            |
| SS     | 25        | 15,799,900                | 64.71            |
| SS     | 125       | 10,663,500                | 69.97            |
| FF     | -27       | 11,260,300                | 64.01            |
| FF     | 25        | 9,714,410                 | 65.09            |
| FF     | 125       | 6,840,200                 | 70.12            |

<img width="1033" height="785" alt="WhatsApp Image 2026-05-01 at 13 29 02" src="https://github.com/user-attachments/assets/4158c3df-f8c2-4728-938e-06dfe2089bbd" />
<img width="1033" height="785" alt="WhatsApp Image 2026-05-01 at 13 29 03 (1)" src="https://github.com/user-attachments/assets/d32d3c77-3335-4ed7-b1bc-826a61a3a45b" />
<img width="1600" height="602" alt="WhatsApp Image 2026-05-01 at 13 29 03" src="https://github.com/user-attachments/assets/f5289748-156f-4659-94cc-48f827e07038" />



## External hardware

Signal Generator / Oscillator: To provide the 0.4V - 1.0V pulse and AC input signals.

DC Power Supply: Stable 1.8V source for the VDD rail.

Oscilloscope: To simultaneously monitor the input and output waveforms, confirming tracking accuracy and settling time.

Capacitor: A discrete 3 pF capacitor acting as the load.

Multimeter: For observing DC bias levels and verifying total current consumption.
>>>>>>> main
