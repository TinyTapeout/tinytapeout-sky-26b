# 5 GHz RF-DC Rectifier

This project implements a differential RF-DC rectifier in SkyWater 130 nm for passive RFID and RF energy harvesting experiments.

## Pinout

| Pin | Function |
|---|---|
| ua[0] | RF input negative, in_n |
| ua[1] | Rectified output, VRECT |
| ua[2] | RF input positive, in_p |
| VGND | Circuit ground |

## Design summary

The rectifier was designed and simulated using xschem/ngspice and laid out manually in KLayout using SKY130 layers.

Nominal pre-layout simulation condition:

- Frequency: 5.8 GHz
- Available RF power: 5 mW
- Differential source reference: 50 Ω
- Load: 3 kΩ
- NMOS: W=1 µm, L=0.15 µm
- PMOS: W=32 µm, L=0.35 µm, nf=8
- Output capacitor: MIM capacitor, approximately 2 pF

At 5 mW available RF power, schematic simulation produced approximately:

- VRECT ≈ 0.496 V
- Ripple ≈ 9 mVpp
- PDC ≈ 82 µW
- PDC/Pin_abs ≈ 30%
- PDC/Pav ≈ 1.6%

No on-chip RF matching network is included. Matching is intended to be external or determined after characterization.