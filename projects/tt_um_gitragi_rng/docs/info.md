## How it works

This project implements a 5-bit pseudo-random number generator using a Linear Feedback Shift Register (LFSR).

The LFSR continuously updates on every clock cycle using XOR feedback taps:

```verilog
feedback = lfsr[4] ^ lfsr[2];
```

When the correct 2-bit key (`10`) is applied, the LFSR behaves normally and generates a pseudo-random sequence.

When an incorrect key is applied, the feedback path is poisoned by shifting zeros into the register instead of the feedback bit. Over time, the LFSR drains to zero and the random generator stops functioning correctly.

The current LFSR value is captured into a sample register whenever the `SAMPLE` input is asserted.

The sampled value is then mapped into a user-defined range using modulo logic:

```verilog
generated_number = sampled % (max_value + 1);
```

The generated number is:
- output as a 5-bit value
- displayed on a 7-segment display using the last decimal digit

The 7-segment display uses active-high segment outputs.

---

## How to test

### Inputs

- `ui[4:0]` = maximum output value (0–31)
- `uio[5]` = KEY_0
- `uio[6]` = KEY_1
- `uio[7]` = SAMPLE

### Outputs

- `uio[4:0]` = generated random number
- `uo[6:0]` = 7-segment display segments

### Correct key behavior

Apply the correct key:

```text
KEY = 10
```

Then:
1. Set the desired maximum value on `ui[4:0]`
2. Wait several clock cycles
3. Pulse `SAMPLE`
4. Observe the generated number on `uio[4:0]`
5. Observe the last decimal digit on the 7-segment display

The generated number should remain within:

```text
0 to MAX_VALUE
```

### Incorrect key behavior

Apply any incorrect key value.

The LFSR feedback path becomes poisoned and the internal state eventually drains to:

```text
00000
```

After enough clock cycles:
- the generated number collapses to zero
- the RNG no longer behaves randomly

---

## External hardware

- Single active-high 7-segment display
- Clock source
- Input switches/buttons for:
  - maximum value
  - key bits
  - sample control
