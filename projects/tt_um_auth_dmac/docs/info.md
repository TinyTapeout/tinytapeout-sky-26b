<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# AUTh DMA Controller Documentation

## Contents

- Overview
- I/O Configuration
- State Diagram
- How to test

## Overview

The core function of the DMA Controller (DMAC) is to take over the system buses and transfer data from memory to an I/O device, or vice versa, when instructed by the CPU. In this implementation, the DMAC is synchronous with the CPU, while memory operates in a second clock domain and the I/O device operates in a third clock domain.

Both word and address width are 8 bits. The DMAC supports two operating modes:

- Single-word transfer mode
- Four-word burst mode

In burst mode, both source and destination addresses are incremented by 1 after each transfer. The DMAC is implemented as a finite state machine (FSM).

## I/O Configuration

Since this project is submitted to a Tiny Tapeout shuttle, there is a strict pin budget: 8 input pins, 8 output pins, 8 bidirectional pins, and 2 pins for clock and reset.

The I/O pins are configured as follows.

### Inputs

- `ui[7]`: `start` - Sent by the CPU to indicate that transfer instructions are about to be provided.
- `ui[6]`: `BG` - Sent by the CPU to indicate that the DMAC is granted control of the system bus.
- `ui[5]`: `rtrn` - Sent by either memory or the I/O device to indicate either: (i) data sent by the DMAC has been received, or (ii) data loaded onto the transfer bus is ready to be read.
- `ui[4:0]`: `cfg_in[4:0]` - Configuration input from the CPU over 4 cycles, carrying mode, direction, source address, and destination address.

### Outputs

- `uo[7]`: `BR` - Sent to the CPU to request control of the system bus.
- `uo[6]`: `WRITE_en` - Sent to memory or the I/O device to indicate whether data should be written or read.
- `uo[5]`: `done` - Sent to the CPU when all transfers are complete.
- `uo[4]`: `valid` - Sent to memory or the I/O device to indicate that address/data on the transfer bus is valid.
- `uo[3]`: `ack` - Sent to memory or the I/O device to indicate that the DMAC has received incoming data.
- `uo[2]`: `target` - Indicates whether transfer bus address/data is intended for memory or the I/O device.
- `uo[1:0]`: Unused.

### Bidirectional

- `uio[7:0]`: `transfer_bus[7:0]`

## How it works (+ State Diagram)
As mentioned before, our DMA Controller is structured as an FSM. In order to explain how it works, we will present each state individually. To further assist the reader's understanding, there is also a state diagram below the following list.

### States

- `S0: IDLE` 
	- The DMAC stays in the `IDLE` state until the CPU pulls up the `start` signal.
- `S1: PREPARATION` 
	- After the `start` signal is set to high, the FSM moves to `PREPARATION` state, where in the span of four cycles `mode`, `direction`, `src_addr` and `dest_addr` are fetched via `cfg_in`.
- `S2: WAIT4BG` 
	- Once the process above is done the `BR` signal is set to high and the FSM stays in `WAIT4BG` until the CPU grants access to the system bus via `BG` input signal.
- `S3: SRC_SEND` 
	- After `BG` is set to high, `SRC_SEND` state follows. In this state `transfer_bus` and `target` outputs are configured so that they convey `src_addr` to either the Memory or the I/O Device (depending on `direction`). After one cycle `valid` is set to high and only then does the receiver fetch the address. This is done in order to mitigate metastability during CDC. After one more cycle the FSM moves to `S4`.  
- `S4: RECEIVE`
	- In this state the FSM waits for a `rtrn` signal from the receiver. Shortly after `rtrn` is set to high, a `rtrn_rise` pulse is generated allowing the DMAC to fetch the data from the `transfer_bus`. Additionally, an `ack` signal is sent back so that the device that sent the data knows that it was received. 
	- It is important to mention that the source does not send an acknowledgement informing the DMAC that the `src_addr` was received. Rather, the `rtrn` signal functions both as an *acknowledgement* (for the `src_addr`) and as a *fetch* signal (for the data). This was done in order to fit the 8 pin input budget. 
- `S5: SENDaddr`
	- After `rtrn_rise` pulses the FSM moves to `SENDaddr` state where the DMAC sends the `dst_addr` to the destination. The address and the target are loaded to the `transfer_bus` and `target` outputs and after one cycle `valid` is set to high. The DMAC now waits for a `rtrn_rise` pulse similar to the `RECEIVE` state. 
- `S6: SENDdata`
	- In `SENDdata` the DMAC sends data to the destination and the process is identical to `SENDaddr`. After `rtrn_rise` pulses, the FSM moves to `S3` if there are more words left to transfer; otherwise, it moves to `S0`. In the latter case `BR` is set to low and `done` is set to high, indicating that the transfer has been successfully completed.
- EXTRA: Timeout logic
	- This is not a state, but rather a check happening in every state where a `rtrn_rise` pulse is required to move to a subsequent state (`S4`, `S5`, `S6`). By setting the localparam `timeout_limit` in `project.v` to the desired number of clock cycles the FSM will move to `S0` if no `rtrn_rise` pulse is generated in the span of `timeout_limit` clock cycles after the FSM has entered either `S4`, `S5` or `S6`. In such case both `BR` and `done` are set to low indicating that the transfer has failed.

![DMAC State Diagram](STATE_DIAGRAM_4.PNG)

Notes:

- `rtrn_rise` is an internal pulse generated shortly after `rtrn` rises to high.
- Similarly, `timeout` is an internal signal indicating that `rtrn_rise` has not been generated in time
- `wrds_lft` is not an actual signal; it indicates whether there are still words left to transfer in four-word burst mode.


## How to test

This project uses a cocotb-based Python testbench and runs simulation with Icarus Verilog.
The entry point for this flow is `test/run_cocotb.py`.

### 1. Requirements

You need all of the following:

- Python 3.10+ (tested in this repo with Python 3.13)
- `pip` (Python package installer)
- Icarus Verilog (`iverilog` and `vvp` available in PATH)
- The Python packages in `test/requirements.txt`:
	- `pytest==8.4.2`
	- `cocotb==2.0.1`

Optional:

- GTKWave for waveform viewing (`.fst` files)

### 2. Install system dependencies

Install Icarus Verilog first.

Windows (PowerShell, winget):

```powershell
winget install IcarusVerilog.IcarusVerilog
```

Linux (Debian/Ubuntu):

```bash
sudo apt update
sudo apt install -y iverilog
```

macOS (Homebrew):

```bash
brew install icarus-verilog
```

Note for macOS: If unable to open, right-click on the app and select Open.

Optional GTKWave:

- Windows: `winget install gtkwave.gtkwave`
- Linux: `sudo apt install -y gtkwave`
- macOS: `brew install --cask gtkwave`

### 3. Create and activate a Python virtual environment

From repository root:

Windows (PowerShell):

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

Linux/macOS:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

If PowerShell blocks activation scripts, allow local scripts in your current user scope:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### 4. Install Python test dependencies

From repository root with .venv activated:

```bash
python -m pip install --upgrade pip
python -m pip install -r test/requirements.txt
```

If you see an import error for `cocotb_tools`, reinstall `cocotb` and the test requirements:

```bash
python -m pip install -r test/requirements.txt
```

Special Case: Python 3.14+ (macOS Compatibility): 
If you are using Python 3.14 or newer, cocotb might block installation due to version checks. Use this workaround:

```bash
export COCOTB_IGNORE_PYTHON_REQUIRES=1 pip install cocotb cocotb-bus pytest
```
### 5. Verify tools are available

```bash
iverilog -V
vvp -V
python -c "import cocotb; print(cocotb.__version__)"
```

Expected:

- Icarus version information prints
- cocotb version prints (should be `2.0.1`)

### 6. Run the cocotb flow (run_cocotb.py)

From repository root:

```bash
python test/run_cocotb.py
```
Note for macOS: 
If `run_cocotb.py` fails with `ModuleNotFoundError: No module named 'cocotb_tools'`, ensure your script uses `from cocotb.runner import get_runner` (updated syntax).

What this script does:

1. Builds the testbench with Icarus using:
	 - DUT: `src/project.v`
	 - testbench wrapper: `test/tb.v`
2. Runs cocotb tests from `test/test.py`.
3. Generates simulation artifacts under `test/sim_build/rtl/`.
4. Auto-generates `cocotb_iverilog_dump.v` inside `test/sim_build/rtl/` as part of cocotb/iverilog waveform setup.

### 7. Expected passing result

You should see a cocotb summary similar to:

- `TESTS=4 PASS=4 FAIL=0 SKIP=0`

The current suite runs these tests:

- `test_single_word_mode`
- `test_burst4_mode`
- `test_randomized_clock_and_transfer_stress`
- `test_all_speed_profile_combinations`

### 8. Output files to know

Important outputs after a run:

- Build artifacts: `test/sim_build/rtl/`
- Main waveform: `test/sim_build/rtl/tb.fst`
- Auto-generated dump helper: `test/sim_build/rtl/cocotb_iverilog_dump.v`
- cocotb XML report: `test/results.xml`

### 9. Optional waveform viewing
After a successful run, a waveform file is generated at test/sim_build/rtl/tb.fst (or .vcd).

If GTKWave is installed:

```bash
gtkwave test/sim_build/rtl/tb.fst test/tb.gtkw
```

Otherwise you can use [Surfer](https://surfer-project.org/), an online waveform viewer. Surfer can also be installed as a VS Code extension. You can load a saved state via `\test\state_preset` file, which includes all important signals. 

### 10. Troubleshooting

- `iverilog` not found:
	- Install Icarus Verilog and reopen terminal so PATH refreshes.
- `ModuleNotFoundError: cocotb`:
	- Activate `.venv` and reinstall `-r test/requirements.txt`.
- `ModuleNotFoundError: cocotb_tools`:
	- Run `python -m pip install -r test/requirements.txt`.
	- If needed, install cocotb directly with `python -m pip install cocotb`.
- Tests time out or fail unexpectedly:
	- Ensure you are running the repository's intended branch and rerun with a clean `test/sim_build` directory.
- Zsh parse error: 
	- Ensure you are not pasting multi-line comments directly into the terminal without proper escaping.
