<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

# Digital Stopwatch with LAP Mode (tt_um_chronoINAAL)

## Description

This project implements a digital stopwatch in Verilog with the following features:

- Start / Stop control  
- LAP mode (freeze displayed value)  
- Time counting in hundredths and seconds (00–59.99)

The design is targeted for Tiny Tapeout, complying with I/O constraints by using display multiplexing and bidirectional pins.

It includes:
- Cascaded BCD counters
- 4-digit 7-segment display multiplexing
- BCD to 7-segment decoder
- Proper button debounce (glitch-free operation)
- Testbench for functional verification

---

## System Architecture

The system is composed of the following blocks:

### 1. Prescaler
Generates a tick every 10 ms from the main clock (50 MHz).

### 2. Control (Simplified FSM)
- `btn_start`: toggles run/pause state  
- `btn_lap`: toggles display mode (live / lap)

### 3. BCD Counters
- Hundredths: 00–99  
- Seconds: 00–59  
- Cascaded increment logic

### 4. LAP Register
Captures the current counter values when LAP mode is activated.

### 5. Display Multiplexing
Controls 4 digits using:
- `segments[7:0]`
- `anodes[3:0]`

### 6. Debounce
Each button includes:
- Two-stage synchronizer
- Time-based filtering
- Edge detection (single clean pulse)

## How to test

## Pin Mapping

### Inputs (`ui_in`)
| Bit | Signal     |
|-----|-----------|
| 0   | btn_start |
| 1   | btn_lap   |
| 2–7 | unused    |

### Outputs (`uo_out`)
| Bit | Segment |
|-----|--------|
| 0   | a      |
| 1   | b      |
| 2   | c      |
| 3   | d      |
| 4   | e      |
| 5   | f      |
| 6   | g      |
| 7   | dp     |

### Bidirectional (`uio`)
| Bit | Signal   |
|-----|----------|
| 0   | anode_0  |
| 1   | anode_1  |
| 2   | anode_2  |
| 3   | anode_3  |
| 4–7 | unused   |

---

## Operation

1. On reset (`rst_n = 0`), the counter initializes to `00.00`.
2. Press **Start**:
   - Begins counting
3. Press again:
   - Pauses counting
4. Press **Lap**:
   - Freezes the displayed value
   - Internal counting continues
5. Press Lap again:
   - Returns to live display

---

## Testbench

The file `tb.v` verifies:

- Proper reset behavior  
- Start signal activation  
- Counting functionality  
- LAP mode activation  
- Stopwatch pause behavior  

### Stimuli included:

- Start pulse  
- Wait period for counting  
- Lap pulse  
- Second Start pulse (Stop)  

### Observed signals:

- `uo_out` → segments  
- `uio_out[3:0]` → anodes  
- Internal signals (during simulation):
  - `running`
  - `lap_mode`
  - BCD counters  


## External hardware
## Simulation Notes

To speed up simulation, the prescaler value can be reduced:

```verilog
parameter MAX_COUNT = 500; // instead of 500000

