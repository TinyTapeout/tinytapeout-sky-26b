<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# How it works

## CORDIC Core Documentation (cordic.v)

This CORDIC (Coordinate Rotation DIgital Computer) core is a hardware-efficient iterative algorithm used to calculate trigonometric functions—specifically **Sine** and **Cosine**—using only shifts and additions. It operates in **rotation mode** to rotate a vector by a specific input angle.

---

### Core Specifications
* **Data Format:** 16-bit Signed Fixed-Point (**Q2.13**)
    * 1 sign bit, 2 integer bits, 13 fractional bits.
    * Resolution: $1 / 2^{13} \approx 0.000122$
    * Range: $\approx [-4.0, 3.999]$
* **Iterations:** 14 clock cycles per calculation.
* **Supported Range:** $-\pi$ to $+\pi$ (Full circle via quadrant correction).

---

### Interface Description

| Signal | Direction | Width | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | 1 | System clock. |
| `rst_n` | Input | 1 | Active-low asynchronous reset. |
| `start` | Input | 1 | Pulse high to initiate a new calculation. |
| `angle_in` | Input | 16 | Target angle in radians (Q2.13 format). |
| `cos_out` | Output | 16 | Calculated Cosine value (Q2.13). |
| `sin_out` | Output | 16 | Calculated Sine value (Q2.13). |
| `done` | Output | 1 | Pulses high for one cycle when output is valid. |

---

### Internal Architecture

#### 1. Quadrant Correction
The CORDIC algorithm natively converges for angles between $-\pi/2$ and $+\pi/2$. This core includes a pre-processing step:
* If $|angle| > \pi/2$, the angle is mirrored into the first/fourth quadrant.
* A `flip` register tracks this change to invert the final results, extending the range to the full $[-\pi, \pi]$ circle.

#### 2. Constants & Scaling
* **K-Factor (Gain):** The core initializes $x$ with `16'sd4974` ($0.60725 \times 2^{13}$). This compensates for the inherent CORDIC gain $A_n \approx 1.6467$ that occurs during rotation.
* **Lookup Table (LUT):** A small ROM stores the $\arctan(2^{-i})$ values for each iteration $i$, used to converge the internal $z$ register to zero.

#### 3. Iterative Logic
For each iteration ($i = 0$ to $13$), the core performs the following transformation:

$$x_{i+1} = x_i - \sigma_i \cdot y_i \cdot 2^{-i}$$
$$y_{i+1} = y_i + \sigma_i \cdot x_i \cdot 2^{-i}$$
$$z_{i+1} = z_i - \sigma_i \cdot \arctan(2^{-i})$$

Where $\sigma_i = 1$ if $z_i \geq 0$, and $-1$ otherwise.

---

### Theory of Operation

1.  **Idle State:** The module waits for the `start` signal.
2.  **Initialization:** On `start`, `angle_in` is loaded into $z$, $x$ is set to the $1/A_n$ constant, and $y$ is cleared.
3.  **Rotation:** Over 14 cycles, the vector $(x,y)$ is rotated until the angle $z$ is minimized. Because we use arithmetic right shifts (`>>>`), no actual multipliers are used in the hardware fabric.
4.  **Completion:** The `busy` flag drops, `done` pulses high, and the result is latched into `sin_out` and `cos_out`.

---

## Controller Module Documentation (controller.v)

The `controller` module acts as the top-level interface for the CORDIC system. It is responsible for deserializing 4-bit input data into a full 16-bit angle, triggering the calculation, and multiplexing the final result based on the user's selection (Sine or Cosine).

---

### Interface Description

#### External Ports (IO)
| Signal | Direction | Width | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | 1 | System clock. |
| `rst_n` | Input | 1 | Active-low asynchronous reset. |
| `rx_data` | Input | 4 | Input nibble (4-bits) containing a portion of the angle. |
| `valid` | Input | 1 | Logic high when `rx_data` is ready to be sampled. |
| `sin_cos` | Input | 1 | Mode selection: `0` for Sine, `1` for Cosine. |
| `byte_select`| Input | 2 | Index of the nibble being sent (00 to 11). |
| `result` | Output | 16 | The final calculated 16-bit value (Q2.13). |

#### CORDIC Core Internal Interface
| Signal | Direction | Width | Description |
| :--- | :--- | :--- | :--- |
| `cordic_start`| Output | 1 | Pulse sent to the CORDIC core to begin calculation. |
| `angle` | Output | 16 | The full 16-bit angle assembled from nibbles. |
| `sin_out` | Input | 16 | Sine result from the CORDIC core. |
| `cos_out` | Input | 16 | Cosine result from the CORDIC core. |
| `cordic_done` | Input | 1 | Completion signal from the CORDIC core. |

---

### Finite State Machine (FSM)

The controller utilizes a 7-state FSM to manage data flow:

1.  **IDLE (0):** Waits for the `valid` signal. Captures the `sin_cos` mode.
2.  **RX_A0 (1):** Samples `rx_data` into `angle[3:0]`.
3.  **RX_A1 (2):** Samples `rx_data` into `angle[7:4]`.
4.  **RX_A2 (3):** Samples `rx_data` into `angle[11:8]`.
5.  **RX_A3 (4):** Samples `rx_data` into `angle[15:12]`.
6.  **START (5):** Pulses `cordic_start` for one clock cycle.
7.  **WAIT (6):** Monitors `cordic_done`. Once complete, it latches either `sin_out` or `cos_out` to the `result` bus and returns to IDLE.

---

### Operational Flow

1.  **Data Assembly:** Because the input bus is limited to 4 bits, the controller requires 4 consecutive `valid` pulses. The user must provide the corresponding `byte_select` (0, 1, 2, then 3) to fill the 16-bit `angle` register.
2.  **Triggering:** Once the last nibble is received, the FSM automatically moves to the `START` state to kick off the CORDIC core logic.
3.  **Multiplexing:** The `disp_select` register remembers if the user wanted Sine or Cosine. When the CORDIC core finishes, this bit determines which internal bus is routed to the external `result` output.

---

### Implementation Details

* **Synchronization:** The module uses a synchronous `always @(posedge clk)` block.
* **Safety:** The FSM checks for both the `valid` signal and the correct `byte_select` before transitioning between receiving states, ensuring data integrity during the assembly of the 16-bit angle.

## How to test

1. First, convert the actual angle data to a fixed-point value by multiplying $2^{13}$ . For example: if your angle is `45'deg`, then in `rad=45*pi/180`. Then convert this rad value to fixed point by doing `angle_fixed_point_val=angle_rad x (2^13)` as 16 bit form. If it's a negative angle, take the 2s complement form.
2. Then send the 16-bit angle value 4 bits at a time, starting from the LSB. To do that, 1st set byte_select `(ui_in[5,4])` to `00` and put the lower 4 bits of the converted angle value in ui_in[3:0]. Then set valid signal `ui_in[7]` to `1`.
3. In the same way, send the next 4 bit angle data by selecting byte_select=01 and continue the process until all 16-bit angle data is sent.
4. Then observe 16 bit converted sin and cos value in output `uio_out and uo_out`. Note that it will produce output in fixed-point representation. So you need to divide it by `2^13` to get the original sin/cos value. You can select sine/cosine output by setting sin_cos pin `ui_in[6]`(=0 to get sine output and 1 to get cosine output)

## External hardware

No external hardwares are required.
