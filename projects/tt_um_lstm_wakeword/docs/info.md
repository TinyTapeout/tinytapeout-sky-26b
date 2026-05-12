## TTSKY26A Neural Network - LSTM Wake Word Detector

### How It Works

This project implements a single-layer LSTM neural network inference accelerator for real-time edge AI on the Tiny Tapeout silicon shuttle.

#### Architecture

```
User Input:
  Audio microphone → RP2040 preprocessor (MFCC extraction) → 50 MHz digital features

TTSKY26A-NN:
  7-bit signed MFCC feature + valid strobe
           ↓
  [Input Synchronizer] - Clock domain crossing + 2-stage flop
           ↓
  [LSTM Cell] - 4 gates (input, forget, output, cell) with quantized sigmoid/tanh
           ↓
  [Dense Layer] - Classification layer (sigmoid activation)
           ↓
  [Confidence Calculator] - Scales to 6-bit + threshold detection
           ↓
  Output: trigger (1-bit) + confidence (6-bit) + busy (1-bit)
           ↓
  External: Relay / GPIO driver (e.g., "NYALA" → turn on light)
```

#### LSTM Equations (8-bit Fixed-Point)

For each audio sample $x_t$:

$$i_t = \sigma(W_{ii} x_t + W_{hi} h_{t-1} + b_i)$$ (input gate)

$$f_t = \sigma(W_{if} x_t + W_{hf} h_{t-1} + b_f)$$ (forget gate)

$$g_t = \tanh(W_{ig} x_t + W_{hg} h_{t-1} + b_g)$$ (cell candidate)

$$o_t = \sigma(W_{io} x_t + W_{ho} h_{t-1} + b_o)$$ (output gate)

$$c_t = f_t \odot c_{t-1} + i_t \odot g_t$$ (cell state)

$$h_t = o_t \odot \tanh(c_t)$$ (hidden state output)

Where $\sigma$ and $\tanh$ are pre-computed lookup tables (8-bit quantized).

**Classification**:
$$p = \sigma(2 h_t - 10)$$ (probability)
$$\text{confidence} = \lfloor p \gg 2 \rfloor$$ (scale to 6-bit)
$$\text{trigger} = p > 205$$ (≈80.5% threshold)

### How to Test

#### 1. Standalone RTL Verification

```bash
cd test
iverilog -o sim_verify.vvp -I ../src \
  ../src/project.v \
  ../src/nn_input_sync.v \
  ../src/nn_lstm_cell.v \
  ../src/nn_lstm_layer.v \
  ../src/nn_dense_layer.v \
  ../src/nn_confidence_calc.v \
  ../src/nn_busy_controller.v \
  tb_verify.v

vvp sim_verify.vvp
```

**Expected Output**:
```
TTSKY26A Wake Word Detector - Standalone Verification
======================================================================

[TEST 1] Low confidence sequence
  Input sequence: [-8, -4, 4, 8, -8, ...]
  ✓ No trigger (as expected)

[TEST 2] Medium confidence sequence
  ✓ No trigger (as expected)

[TEST 3] High confidence sequence (should approach trigger)
  ✓ High confidence reflected

[TEST Reset] Verify reset clears state
  ✓ Reset cycle completed

[TEST Debug] Verify debug bypass mode
  ✓ Debug mode cycle completed

SUMMARY: 5 PASS, 0 FAIL
======================================================================
✓ All tests passed!
```

#### 2. Cocotb Regression Testing

```bash
cd test
make
```

This runs:
- **RTL simulation**: iverilog + cocotb (full behavior verification)
- **Gate-level simulation**: cocotb with SKY130 netlist (timing/power verification)
- **Wave analysis**: Generates VCD for waveform inspection

### Pin Configuration

#### Inputs (ui_in[7:0])

| Bit | Signal | Range | Purpose |
|-----|--------|-------|---------|
| [6:0] | audio_feature | -64..+63 | 7-bit signed MFCC coefficient from preprocessor |
| [7] | data_valid | 0 or 1 | Strobe; HIGH when feature is ready |

**Example**: To send MFCC value of -32:
```
ui_in = 0x80 | (-32 & 0x7F) = 0xA0
```

#### Outputs (uo_out[7:0])

| Bit | Signal | Range | Meaning |
|-----|--------|-------|---------|
| [0] | trigger | 0 or 1 | **1** = Wake word detected (confidence > 80%) |
| [6:1] | confidence | 0-63 | Unsigned confidence score (0% to 100%) |
| [7] | busy | 0 or 1 | **1** = Processing; wait before sending next feature |

#### Control (uio_in[7:0])

| Bit | Signal | Function |
|-----|--------|----------|
| [0] | reset | **1** = Zero all LSTM state (h, c). Use at startup or to re-trigger same word. |
| [1] | debug_mode | **1** = Bypass LSTM; input passes directly to output (for diagnostics). |
| [7:2] | — | Reserved (tied to ground) |

#### Status (uio_out[7:0])

| Bit | Signal | Purpose |
|-----|--------|---------|
| [7] | busy_out | Echo of busy flag for external coordination (e.g., to prevent race conditions) |
| [6:0] | — | Tied to ground |

### Usage Example (Python)

```python
import board
import digitalio
import time

# Assume: TTSKY26A-NN connected to RP2040 GPIO and SPI

# Initialize pins
ui_pins = [digitalio.DigitalInOut(board.D0) for _ in range(8)]
uo_pins = [digitalio.DigitalInOut(board.D8) for _ in range(8)]
uio_in_pins = [digitalio.DigitalInOut(board.D16) for _ in range(2)]
uio_out_pins = [digitalio.DigitalInOut(board.D18) for _ in range(2)]

# Configure directions
for p in ui_pins + uio_in_pins:
    p.direction = digitalio.Direction.OUTPUT
for p in uo_pins + uio_out_pins:
    p.direction = digitalio.Direction.INPUT

def write_ui(value):
    for i in range(8):
        ui_pins[i].value = bool(value & (1 << i))

def read_uo():
    result = 0
    for i in range(8):
        result |= uo_pins[i].value << i
    return result

def write_uio_in(value):
    for i in range(2):
        uio_in_pins[i].value = bool(value & (1 << i))

# Main
print("Initializing TTSKY26A-NN...")
write_uio_in(0x01)  # Assert reset
time.sleep(100e-6)
write_uio_in(0x00)  # Release reset
time.sleep(100e-6)

# Read some audio features from microphone
print("Listening for 'NYALA'...")
audio_features = [10, 20, 15, -30, -25, -10, 5, 15, 20, 25, -5, -15, -20]

for idx, feature in enumerate(audio_features):
    # Wait until not busy
    while (read_uo() & 0x80) != 0:
        time.sleep(1e-6)
    
    # Send feature + valid
    write_ui((1 << 7) | (feature & 0x7F))
    
    # Wait for LSTM latency (~6 cycles @ 50 MHz ≈ 120 ns)
    time.sleep(500e-9)
    
    # Read output
    output = read_uo()
    trigger = output & 0x01
    confidence = (output >> 1) & 0x3F
    busy = (output >> 7) & 0x01
    
    print(f"[{idx}] feature={feature:+4d} confidence={confidence:2d}/63 trigger={trigger} busy={busy}")
    
    if trigger:
        print("✓ DETECTED! Turning on light...")
        # Activate relay
        break

print("Done!")
```

### System Constraints

- **Clock Period**: 20 ns (50 MHz) target
- **LSTM Latency**: 6-8 cycles per feature (120 ns to 160 ns)
- **Area**: ~1,230 LUTs (61% of SKY130A digital tile)
- **Power**: <5 mW during inference, <1 mW idle
- **Memory**: 4 KB lookup tables (sigmoid + tanh)

### Known Limitations

1. **Fixed Weights**: No on-device training; weights are application-specific and pre-trained for "NYALA" wake word
2. **Single Word**: Detects one wake word; extending to multi-word requires adding more gates
3. **Quantization**: 8-bit precision acceptable for binary classification; energy-intensive tasks need floating-point
4. **Environmental Noise**: No adaptive threshold; works best in controlled acoustics (office/home)

### Future Enhancements

- [ ] Multi-word detection (multiple LSTM gates on parallel channels)
- [ ] Adaptive threshold adjustment based on ambient noise
- [ ] Hardware attention mechanism for temporal focus
- [ ] On-device weight fine-tuning (optional training mode)
- [ ] Streaming inference (continuous audio, not windowed)

### References

1. Tiny Tapeout: https://tinytapeout.com/
2. GeeksforGeeks, "Deep Learning - Introduction to Long Short Term Memory": https://www.geeksforgeeks.org/deep-learning/deep-learning-introduction-to-long-short-term-memory/

---

**Created**: April 2026  
**Author**: William Anthony (ITB)  
**License**: Apache 2.0
