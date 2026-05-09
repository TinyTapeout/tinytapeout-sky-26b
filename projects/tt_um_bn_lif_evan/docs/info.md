# Bernoulli Stochastic Multiplier + LIF Neuron

A hardware stochastic multiplier using Bernoulli streams, with a conventional 4x4 multiplier for direct on-silicon comparison, and a bonus Linear Leaky Integrate-and-Fire (LIF) neuron sharing the tile.

## How it works

**Bernoulli Stochastic Multiplier (`uio[7:6]=00`)**

Two independent 8-bit LFSRs (same maximal-length polynomial, different seeds giving a phase offset) generate uniform random 4-bit thresholds each cycle. Input operands A (`ui[7:4]`) and B (`ui[3:0]`), each representing a probability in [0,1] as A/16 and B/16, are compared against these thresholds. The AND of the two comparisons fires with probability (A/16)·(B/16) — exactly the product. Accumulating over W cycles and dividing by W recovers the product estimate. Variance decreases as 1/W, so accuracy is tunable by stream length.

**Conventional 4x4 Unsigned Multiplier (`uio[7:6]=10`)**

Takes the same two 4-bit inputs and produces their exact 8-bit integer product A*B on `uo_out`. This serves as a direct on-silicon comparison point for the Bernoulli multiplier — same process node, same clock, same inputs. The Bernoulli estimate (count/W) can be compared against the exact result (product/256) to characterize stochastic accuracy as a function of window length W.

**Linear Leaky Integrate-and-Fire Neuron (`uio[7:6]=01`)**

A signed 8-bit integer LIF neuron with configurable threshold, reset potential, decay value, and operating mode (accumulate / decay / both). The membrane potential integrates input values each cycle, decays by a configurable amount, and fires a spike when it reaches threshold, resetting to v_reset. Configuration is written via the `uio_in` register interface. Output is `{membrane[7:1], spike}` on `uo_out`.

## Pin Reference

| Pin | Direction | Description |
|-----|-----------|-------------|
| `ui[7:4]` | input | Operand A (4-bit, represents A/16; LIF: input_val[7:4]) |
| `ui[3:0]` | input | Operand B (4-bit, represents B/16; LIF: input_val[3:0]) |
| `uo[7:0]` | output | Bernoulli/Mult: `count[7:0]` or exact product; LIF: `{membrane[7:1], spike}` |
| `uio[7:6]` | input | Project select: `00`=Bernoulli, `01`=LIF, `10`=Conventional multiplier |
| `uio[5]` | input | LIF config write strobe |
| `uio[4:2]` | input | LIF config register address |
| `uio[1:0]` | input | Unused |
| `clk` | input | Clock |
| `rst_n` | input | Active-low synchronous reset |

### LIF Config Register Map (`uio[4:2]`)

| Address | Register | Description |
|---------|----------|-------------|
| `3'h1` | `decay_val` | Signed decay amount per cycle |
| `3'h2` | `threshold` | Signed firing threshold |
| `3'h3` | `v_reset` | Signed reset potential after spike |
| `3'h4` | `mode_ctrl` | `[1]=mode_decay`, `[0]=mode_add` |

## How to test

### Conventional Multiplier (`uio[7:6]=10`)

1. Set `uio[7:6]=2'b10` to select the conventional multiplier.
2. Drive `ui[7:4]` and `ui[3:0]` with your two 4-bit operands.
3. Read the exact product A*B from `uo_out` after one clock cycle.

**Example:** A=8, B=8 → `uo_out=64`. A=15, B=15 → `uo_out=225`.

### Bernoulli Multiplier (`uio[7:6]=00`)

1. Assert `rst_n` low for at least 4 cycles, then release to zero the counter.
2. Set `uio[7:6]=2'b00` to select the Bernoulli multiplier.
3. Drive `ui[7:4]` and `ui[3:0]` with your two 4-bit operands.
4. After W clock cycles, read `uo_out`. The stochastic estimate of (A/16)·(B/16) is `uo_out / W`.
5. Compare against the conventional multiplier result (exact/256) to measure error.
6. Repeat for increasing W (16, 32, 64, 128, 256, 512) to observe variance reduction.

**Example:** A=8, B=8 → true product=0.25. After W=256 cycles, expect `uo_out ≈ 64`.

> Note: `count` is 16-bit internally but only the lower 8 bits are exposed via `uo_out`. For small operands and moderate W this is sufficient. For large W, reset periodically and accumulate externally.

### LIF Neuron (`uio[7:6]=01`)

1. Assert `rst_n` low for at least 4 cycles, then release.
2. Write config registers by setting `uio[7:6]=2'b01`, asserting `uio[5]=1`, placing the register address on `uio[4:2]`, and the value on `ui[7:0]`. One write per clock cycle.
3. Deassert `uio[5]=0` to enter run mode. Drive `ui[7:0]` with the signed input value each cycle.
4. Read `uo[0]` for spike output, `uo[7:1]` for the upper 7 bits of membrane potential.

**Example:** threshold=32, decay=2, input=8, mode=add+decay → net +6/cycle → spike every 6 cycles.

## External Hardware

None required.

## References

- [Stochastic Computing (Wikipedia)](https://en.wikipedia.org/wiki/Stochastic_computing)
- Tiny Tapeout: [https://tinytapeout.com](https://tinytapeout.com)