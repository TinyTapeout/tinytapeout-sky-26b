<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The **tt_um_dma_multi_channel** is a Direct Memory Access (DMA) controller for Tiny Tapeout. It provides dual independent DMA channels with error detection and programmable transfer widths. This design enables efficient memory-to-memory data transfers on a single chip tile while monitoring for address boundary violations and transfer errors.

The DMA controller transfers data between memory locations under software control. Each transfer operation is initiated by asserting a START signal and specifying source/destination addresses and transfer mode.

**Basic Transfer Operation:**

1. **Configure Transfer:** Set source address, destination address, and mode via `ui_in[7:0]`
   - `ui_in[7]` = START (pulse high to begin)
   - `ui_in[6:4]` = Source address (3 bits, range 0-7)
   - `ui_in[3:1]` = Destination address (3 bits, range 0-7)
   - `ui_in[0]` = Transfer mode (0 = single word, 1 = burst 3 words)

2. **Select Channel:** Use `uio_in[0]` to choose between two independent channels (0 or 1)

3. **Execute Transfer:** 
   - FSM reads from source memory location
   - Writes to destination memory location
   - Updates pointers
   - Repeats for burst mode
   - Asserts `dma_done` pulse when complete

4. **Monitor Output:**
   - `uo_out[7]` = Transfer complete pulse (1 cycle)
   - `uo_out[6:0]` = Last data transferred
   - `uio_out[5:3]` = Error flags (if any boundaries violated)

**Memory Organization:**

Each channel has 8 locations × 7 bits:
- Locations 0-3: Pre-loaded with test data ('a', 'b', 'c', 'd' in ASCII)
- Locations 4-7: Available for transfers (initially empty)

**Example Transfer Sequence:**

```
Cycle 1: Reset asserted (rst_n = LOW)
Cycle 3: rst_n returns HIGH, FSM in IDLE

Cycle 5: Set ui_in = 0x88 (START=1, SRC=0, DST=1, MODE=0)
         → Start single-word transfer from address 0 to 1

Cycle 6: FSM in TRANSFER state
         → mem[1] ← mem[0] (0x61 copied)
         → data_out shows 0x61

Cycle 7: FSM moves to DONE state
         → dma_done pulse goes HIGH

Cycle 8: FSM returns to IDLE
         → dma_done goes LOW
         → Transfer complete!
```

**Dual-Channel Feature:**

Both channels operate independently with separate memories and FSMs. Channel selection via `uio_in[0]` switches which channel's output appears on `uo_out`. This allows:
- Sequential operation: Start CH0, wait for done, switch to CH1, start CH1
- Or: Independently manage two separate transfers by toggling channel select

**Error Detection:**

The controller monitors for three error conditions:
- **Source Boundary Error:** Source address > 7 (out of range)
- **Destination Boundary Error:** Destination address > 7 (out of range)
- **Address Mismatch Error:** Source address == Destination address (same location)

If any error detected, transfer skips and `dma_done` still pulses. Error flags remain valid on `uio_out[5:3]` until next transfer starts.

## How to test
Apply clock and reset signals. Set the configuration inputs (`ui_in[7:0]`) with source address, destination address, and transfer mode. Pulse the START signal (ui_in[7]) high for one cycle to initiate the transfer.

Monitor the output (`uo_out[7]`) for the done pulse, which indicates the transfer is complete. The transferred data appears on `uo_out[6:0]`. Check error flags on `uio_out[5:3]` if boundary violations occur.

**Basic test sequence:**
1. Reset (rst_n = LOW for 2 cycles)
2. Set ui_in = 0x88 (transfer from address 0 to 1, single word)
3. Pulse START signal
4. Wait for dma_done pulse on uo_out[7]
5. Read data on uo_out[6:0]

Run simulations with Cocotb to verify transfers in different modes (single/burst) and test both channels independently by toggling `uio_in[0]`.


## External hardware

### Minimum Setup

**Required Components:**
- Tiny Tapeout PCB or test board
- Clock source (20 MHz recommended, any between 1-100 MHz works)
- Reset switch/button
- USB logic analyzer (optional, for observing transfers)
