## How it works

This design implements a secure 2-bit Reversible ALU using universal reversible gates (Toffoli, Fredkin, and Peres). 

The design follows **Little Endian** bit ordering for all inputs and outputs. For example, the 2-bit security key (Binary 10) is entered by setting Bit 0 (Switch 7) to OFF and Bit 1 (Switch 8) to ON. 

The circuit first validates the 2-bit hardware key (Key = 10). If the key is valid, the user can select between Addition, XOR, Shift, and Pass modes via the M0 and M1 switches. If the key is invalid, the internal routing logic is intentionally flipped, causing the ALU to output the result of a different operation than the one selected (e.g., performing an XOR when Addition was requested).

To maintain a 1-to-1 bijective mapping required for reversible computing, the circuit preserves 5 bits of the original input as "garbage outputs" alongside the 3-bit math result. The design occupies a 1x1 tile and falls well within the 1000-gate limit.

## How to test

The circuit is purely combinational. Set the input switches (ui[0-7]) and observe the output LEDs (uo[0-7]). 

### Input Mapping
* **Math Inputs (Little Endian):**
  * **ui[0]**: Input A0 (LSB of A)
  * **ui[1]**: Input A1 (MSB of A)
  * **ui[2]**: Input B0 (LSB of B)
  * **ui[3]**: Input B1 (MSB of B)
* **Control Inputs:**
  * **ui[4]**: Mode Selection bit 0 (M0)
  * **ui[5]**: Mode Selection bit 1 (M1)
  * **ui[6]**: Security Key bit 0 (K0)
  * **ui[7]**: Security Key bit 1 (K1)

**Mode Selection Table (Valid Key K=10 Required):**

| M1 (ui[5]) | M0 (ui[4]) | Operation | Logic Description |
|------------|------------|-----------|-------------------|
| OFF (0)    | OFF (0)    | ADD       | Result = A + B (with Carry) |
| OFF (0)    | ON (1)     | XOR       | Result = A ⊕ B |
| ON (1)     | OFF (0)    | SHIFT     | Result = Swap A (A0 to R1, A1 to R0) |
| ON (1)     | ON (1)     | PASS      | Result = A (Bypasses ALU) |

*Note: In a constrained 2-bit Reversible architecture, a logical left shift operation acts functionally as a swap (a 1-bit circular rotation). The bits cross over rather than destroying the MSB and inserting a zero, which is necessary to maintain the perfect bijection required by reversible computing.*

**Output Mapping:**

* **Math Results:**
  * uo[0]: Result 0 / R0 (LSB)
  * uo[1]: Result 1 / R1 (MSB)
  * uo[2]: Carry Out (Only active during ADD)

* **Bijective Verification (Garbage Outputs):**
  To ensure reversibility, these outputs directly mirror the input switches:
  * uo[3] mirrors ui[4] (M0)
  * uo[4] mirrors ui[5] (M1)
  * uo[5] mirrors ui[0] (A0)
  * uo[6] mirrors ui[2] (B0)
  * uo[7] mirrors ui[3] (B1)

**Test Cases (Valid Key: K0=OFF, K1=ON):**

1. **ADD Test (1+2=3):** Set Switches to [ON, OFF, OFF, ON, OFF, OFF, OFF, ON]. 
   - *Expected LEDs:* 1 & 2 are ON (Result=3), LED 3 is OFF (No Carry).
2. **XOR Test (3 XOR 1 = 2):** Set Switches to [ON, ON, ON, OFF, ON, OFF, OFF, ON].
   - *Expected LEDs:* LED 1 is OFF, LED 2 is ON.
3. **SHIFT Test (A=1 becomes 2):** Set Switches to [ON, OFF, OFF, OFF, OFF, ON, OFF, ON].
   - *Expected LEDs:* LED 1 is OFF, LED 2 is ON (A0 moved to R1 position).
4. **PASS Test (A=2 stays 2):** Set Switches to [OFF, ON, OFF, OFF, ON, ON, OFF, ON].
   - *Expected LEDs:* LED 1 is OFF, LED 2 is ON (Input A passes through).
5. **LOCK Test (Sabotaged ADD):** Set Switches to [ON, ON, ON, OFF, OFF, OFF, OFF, OFF] (Key is wrong).
   - *Expected LEDs:* Circuit sabotages ADD and performs XOR instead. LED 2 turns ON instead of LED 3.

## External hardware

None required. The design is intended for use with the standard Tiny Tapeout carrier board DIP switches and an 8-LED bar graph for raw binary/bijective data visualization.
