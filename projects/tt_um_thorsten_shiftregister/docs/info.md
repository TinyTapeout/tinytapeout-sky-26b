## How it works

This project implements a **40-bit shift register challenge**. Inside the design, a secret 40-bit number is hardcoded. The shift register receives one bit at a time through the serial input. With every rising clock edge (when shift enable is high), the register shifts left and the new bit is inserted at the LSB.

The single output bit goes **HIGH** if and only if the current 40-bit content of the shift register exactly matches the hidden secret number. For every other combination — all 2^40 - 1 of them — the output stays **LOW**.

### Internal logic

- A 40-bit register stores the last 40 bits that were shifted in.
- Each clock cycle (with shift enable asserted), the register shifts: `shift_reg <= {shift_reg[38:0], serial_in}`.
- A combinational comparator checks whether `shift_reg == SECRET_KEY`.
- The result drives `uo_out[0]`.

The design resets to all zeros on `rst_n` low.

## How to test

1. **Reset** the design by pulling `rst_n` low for at least one clock cycle, then release it.
2. Set `ui_in[1]` (shift enable) **high**.
3. Clock in your 40-bit candidate sequence **MSB first** on `ui_in[0]`, one bit per clock cycle.
4. After exactly 40 clock cycles, check `uo_out[0]`:
   - **HIGH** → you found the correct sequence! 🎉
   - **LOW** → wrong sequence, try again.
5. You can keep shifting — the register is a sliding window, so every new clock cycle checks a new 40-bit candidate.

### Timing example (pseudocode)

```
rst_n = 0; tick(); rst_n = 1;
shift_en = 1;
for bit in my_40bit_candidate (MSB first):
    serial_in = bit
    tick()
read uo_out[0]
```

### Brute-force difficulty

There are **2^40 ≈ 1 trillion** possible 40-bit numbers. At 10 MHz clock speed, exhaustively testing every combination would take roughly **3 hours**. Can you find a smarter way?

## External hardware

No external hardware is required. All interaction happens through the dedicated input/output pins:

| Pin | Direction | Description |
|-----|-----------|-------------|
| `ui[0]` | Input | Serial data input |
| `ui[1]` | Input | Shift enable (active high) |
| `uo[0]` | Output | Challenge output (HIGH = correct key found) |
| `rst_n` | Input | Active-low reset |
| `clk` | Input | Clock |
