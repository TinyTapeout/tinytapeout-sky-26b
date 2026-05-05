<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
# 16-Bit Configurable Galois LFSR

A versatile, high-performance **16-bit Galois Linear Feedback Shift Register (LFSR)** implemented in Verilog. This module is designed for Pseudo-Random Number Generation (PRNG), Checksum generation (CRC), and cryptographic applications.

Unlike simple LFSRs, this implementation features a **32-polynomial library**, bidirectional shifting, and an auto-recovery mechanism to prevent the "lock-up" zero state.

---

## 🚀 Features

* **Galois Architecture:** Faster and more efficient than Fibonacci LFSRs due to reduced gate delay in the feedback path.
* **32 Selectable Polynomials:** Includes Maximal Length sequences (PRNG), industry-standard CRCs (CCITT, Modbus, USB, etc.), and experimental patterns.
* **Bidirectional Shifting:** Supports both Left and Right shift directions via the `dir` input.
* **Robustness:** Integrated **self-recovery** logic; if the register ever hits `16'h0000`, it automatically resets to a valid state.
* **Enable/Pause Control:** Clock gating logic allows you to freeze the state of the LFSR.

---

## 🔌 Interface Signals

| Signal | Width | Type | Description |
| :--- | :--- | :--- | :--- |
| `clk` | 1 | Input | System Clock (Rising Edge) |
| `rst_n` | 1 | Input | Asynchronous Active-Low Reset |
| `en` | 1 | Input | Enable: `1` = Run, `0` = Pause |
| `dir` | 1 | Input | Direction: `0` = Right Shift, `1` = Left Shift |
| `poly_sel` | 5 | Input | Polynomial Selector (32 options) |
| `q` | 16 | Output | Current 16-bit LFSR State |

---

## 🛠 Polynomial Library Map

The `poly_sel[4:0]` input maps to the following categories:

### 1. Maximal Length (PRNG) - `5'h00` to `5'h07`
Used for generating white-noise-like sequences with a period of **65,535** cycles.

### 2. Standard CRCs - `5'h08` to `5'h17`
Standard polynomials used in industry communication protocols:
* **CRC-16-CCITT:** `5'h08` (X.25, HDLC)
* **Modbus/USB:** `5'h09`
* **XMODEM:** `5'h0D`

### 3. Experimental / High Density - `5'h18` to `5'h1F`
Heavy tap distributions and alternating patterns for specialized testing or high-entropy needs.

---

## 📖 Theory of Operation

The Galois LFSR performs shifting and conditional XORing in parallel. 

1.  **Right Shift Mode (`dir=0`):**
    The register shifts right by one bit. If the bit shifted out (`q[0]`) was `1`, the entire register is XORed with the selected `current_poly`.
2.  **Left Shift Mode (`dir=1`):**
    The register shifts left by one bit. If the bit shifted out (`q[15]`) was `1`, the entire register is XORed with the selected `current_poly`.

---

## How to test

Apply Enable, Direction and select different polynomial via DIP switches and observe output on LEDs.
<p>
Pin Mapping:
ui_in[0]-> Enable (Enable: 1 = Run, 0 = Pause)
ui_in[1]->left/right shift(0 = Right, 1 = Left)
ui_in[6:2]-> Polynomial select (different options shown below)

```
            5'h00: current_poly = 16'hB400; // Taps: 16,15,13,4
            5'h01: current_poly = 16'hD008; // Taps: 16,15,13,4 (Alt)
            5'h02: current_poly = 16'hE008; // Taps: 16,15,14,1
            5'h03: current_poly = 16'h8016; // Taps: 16,13,12,11,7,2
            5'h04: current_poly = 16'h9630; // Taps: 16,15,12,10,9,5,4
            5'h05: current_poly = 16'h8051; // Taps: 16,15,7,4,1
            5'h06: current_poly = 16'h8003; // Taps: 16,15,2,1
            5'h07: current_poly = 16'hB000; // Taps: 16,15,13,12

            // [8-23] Standard CRCs (Communication & Storage)
            5'h08: current_poly = 16'h8408; // CRC-16-CCITT (X.25/HDLC)
            5'h09: current_poly = 16'hA001; // CRC-16 (Modbus/USB)
            5'h0A: current_poly = 16'h0589; // CRC-16 (DECT)
            5'h0B: current_poly = 16'hA6BC; // CRC-16 (DNP)
            5'h0C: current_poly = 16'hEDB6; // CRC-16 (Profibus)
            5'h0D: current_poly = 16'h1021; // CRC-16 (XMODEM)
            5'h0E: current_poly = 16'h4800; // CRC-16 (CDMA)
            5'h0F: current_poly = 16'h8005; // CRC-16 (IBM)
            5'h10: current_poly = 16'hC867; // CRC-16 (CDMA2000)
            5'h11: current_poly = 16'hD8A1; // CRC-16 (OpenSafety)
            5'h12: current_poly = 16'h2030; // CRC-16 (M-Bus)
            5'h13: current_poly = 16'h0001; // Parity check style
            5'h14: current_poly = 16'hA3D7; // CRC-16 (Maxim/Dallas)
            5'h15: current_poly = 16'hC002; // CRC-16 (GNR)
            5'h16: current_poly = 16'h8BB7; // CRC-16 (T10-DIF)
            5'h17: current_poly = 16'h1005; // CRC-16 (AX.25)

            // [24-31] Experimental / High Density
            5'h18: current_poly = 16'hFFFF; // All taps
            5'h19: current_poly = 16'hAAAA; // Alternating
            5'h1A: current_poly = 16'h5555; // Alternating (inv)
            5'h1B: current_poly = 16'h8001; // Minimum taps
            5'h1C: current_poly = 16'hF0F0; // Nibble heavy
            5'h1D: current_poly = 16'h0F0F; // Nibble heavy (inv)
            5'h1E: current_poly = 16'hCCC3; // High parity
            5'h1F: current_poly = 16'h801F; // Custom
```

## External hardware

No external hardware required. 
