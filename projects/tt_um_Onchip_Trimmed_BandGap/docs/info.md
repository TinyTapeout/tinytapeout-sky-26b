<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This circuit implements a **Bandgap Voltage Reference (BGR)** based on the **Beta multiplier amplifier topology**. The core of the circuit utilizes an **Operational Transconductance Amplifier (OTA)** implemented in a **folded cascode configuration**. The circuit is designed to generate a highly stable nominal output voltage ($V_{ref}$) of approximately **1.25 V**.

### 3-Bit Resistor Trimming Network (Active-Low Logic)
To compensate for post-fabrication process variations and resistor mismatches, the architecture integrates a **3-bit digital trimming network** controlled by three dedicated digital inputs ($V_A$, $V_B$, and $V_C$). 
* These digital bits interface directly with the gates of internal **PMOS switches** that bypass or engage segments of the internal resistor string.
* Due to the PMOS characteristics, the trimming network operates on **active-low**.
* **Setting a bit to a logic high (`1`):** Turns the respective PMOS switch **OFF**, forcing the internal current to flow through that resistor segment. This **adds resistance** to the network, which subsequently **increases** the output voltage ($V_{ref}$).
* **Setting a bit to a logic low (`0`):** Turns the PMOS switch **ON**, shorting out that specific resistor segment. This **removes resistance** from the network, which subsequently **decreases** the output voltage ($V_{ref}$).

This inverted 3-bit control provides 8 discrete tuning steps to fine-tune and calibrate the reference voltage back to its ideal value post-silicon.

## How to test

To properly characterize and validate the performance of the bandgap reference, measurements must be taken at both of its available output nodes:

1. **Buffer Output ($V_g$):** This node is routed through an integrated analog buffer. The buffer is designed using a **replica of the internal folded cascode OTA** to isolate the sensitive internal nodes of the bandgap core from external pad capacitance and loading effects.
2. **Direct Reference Output ($V_{ref}$):** This node is connected directly to the output pad without buffering, allowing a precise DC measurement of the raw bandgap voltage (ideally using a high-impedance instrument to prevent loading).

### Calibration Procedure:
* Power up the chip and apply the nominal $V_{DD}$ supply voltage.
* Monitor $V_{ref}$ and sweep the digital inputs ($V_A, V_B, V_C$) through all 8 binary combinations from `000` (minimum resistance, lowest $V_{ref}$) to `111` (maximum resistance, highest $V_{ref}$).
* Identify the active-low code that brings $V_{ref}$ closest to the target **1.23 V**.

## External hardware

To test and operate this analog macro, the following external hardware is required:
* **DC Voltage Source:** A stable and clean power supply ($V_{DD}$) to power the analog core and digital trimming control.
* **Measurement Equipment:** A high-input-impedance Digital Multimeter (DMM) or Source Measure Unit (SMU) connected to the $V_g$ and $V_{ref}$ pins to prevent current drawing from the unbuffered node during voltage verification.

## How it works

This circuit implements a **Bandgap Voltage Reference (BGR)** based on the **Beta multiplier amplifier topology**. The core of the circuit utilizes an **Operational Transconductance Amplifier (OTA)** implemented in a **folded cascode configuration**. The circuit is designed to generate a highly stable nominal output voltage ($V_{ref}$) of approximately **1.25 V**.

### 3-Bit Binary-Weighted Resistor Trimming Network
To compensate for post-fabrication process variations and resistor mismatches, the architecture integrates a **3-bit digital trimming network** controlled by three dedicated digital inputs ($V_A$, $V_B$, and $V_C$). 
* These digital bits interface directly with the gates of internal **PMOS switches** that bypass or engage segments of the internal resistor string.
* Due to the PMOS characteristics, the trimming network operates on **active-low**.
* **Setting a bit to a logic high (`1`):** Turns the respective PMOS switch **OFF**, forcing the internal current to flow through that resistor segment. This **adds resistance** to the network, which subsequently **increases** the output voltage ($V_{ref}$).
* **Setting a bit to a logic low (`0`):** Turns the PMOS switch **ON**, shorting out that specific resistor segment. This **removes resistance** from the network, which subsequently **decreases** the output voltage ($V_{ref}$).

The trimming network is binarily weighted to provide linear tuning steps, where $V_A$ represents the largest adjustment segment and $V_C$ represents the finest resolution step:
* **$V_A$:** Controls a full resistance segment ($1 \cdot R$).
* **$V_B$:** Controls a half resistance segment ($\frac{1}{2} \cdot R$).
* **$V_C$:** Controls a quarter resistance segment ($\frac{1}{4} \cdot R$).

### Target Calibration Point
For the typical process corner (**TT** corner: $V_{DD} = 1.8\text{ V}$, $T = 27^\circ\text{C}$, nominal MOS and resistor models), the nominal calibration code is defined as **`(VA, VB, VC) = 001`**.

## How to test

To properly characterize and validate the performance of the bandgap reference, measurements must be taken at both of its available output nodes:

1. **OTA Output ($V_g$):** This node is connected directly to the output pad.
2. **Direct Reference Output ($V_{ref}$):** This node is connected directly to the output pad.

### Calibration Procedure:
* Power up the chip with the nominal $VDPWR = 1.8\text{ V}$ supply voltage.
* Monitor $V_{ref}$ and sweep the digital inputs ($V_A, V_B, V_C$) through all 8 binary combinations from `000` (minimum resistance, lowest $V_{ref}$) to `111` (maximum resistance, highest $V_{ref}$).
* Under nominal room temperature conditions ($27^\circ\text{C}$), setting the code to `001` should yield a $V_{ref}$ close to the target **1.25 V**. Adjust the code accordingly if process variations have shifted the uncalibrated output.

## External hardware

To test and operate the following external hardware is required:
* **Measurement Equipment:** A high-input-impedance Multimeter or Source Measure Unit connected to the $V_g$ or $V_{ref}$ pins to prevent current drawing from the unbuffered node during voltage verification.
