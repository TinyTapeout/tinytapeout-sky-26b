<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design implements a configurable 32-bit Watchdog Timer (WDT) with optional password protection.

The WDT is a 32-bit down-counter. It loads a predefined value (WDTLOAD) and decrements on each tick.
If the counter reaches zero without being fed, a timeout event (OE) is generated.

---

## Input Description

### ui[0] — WDTEN (Enable)
- 0: Watchdog disabled → counter continuously reloads
- 1: Watchdog enabled → counter starts counting down

---

### ui[2:1] — PWD_SEL (Password Mode)
Selects access control behavior:

- 00: No password required  
- 01: Fixed password required 
- 10: No password required (same as 00)  
- 11: Dynamic password (Fibonacci sequence)

---

### ui[5:3] — TIME_SEL (Timeout Selection)
Selects timeout duration:

| TIME_SEL | Timeout |
|---------|--------|
| 000 | WDTLOAD = tick_per_sec / 10 |
| 001 | WDTLOAD = tick_per_sec |
| 010 | WDTLOAD = tick_per_sec × 10 |
| 011 | WDTLOAD = tick_per_sec × 100 |
| others | default = tick_per_sec |

---

### ui[7:6] — DIV (Clock Divider Selection)
Controls tick generation speed:

| DIV | tick_per_sec |
|-----|-------------|
| 00 | 32,000,000 |
| 01 | 16,000,000 |
| 10 | 8,000,000 |
| 11 | 1,000,000 |

---

### uio[0] — FEED
- 1: Attempt to reload watchdog counter
- 0: No action

---

### uio[7:1] — PWD[6:0] (Password Input)
Password used when password mode is enabled.

---

## Password Mechanism

### Fixed Password (PWD_SEL = 01)
- Default password: 1010_110
- Fibonacci sequence password: Start with 0 and 1, if last password is 89, it will return 1
 

## How to test  

The design is verified using Cocotb-based simulation. The testbench validates reset behavior, watchdog enable, timeout operation, password protection modes, and feed functionality.

---

## Reset and initialization test

**Objective:** Ensure the system starts in a known safe state.

**Steps:**
- Set `rst_n = 0` for at least 10 clock cycles
- Release reset by setting `rst_n = 1`
- Wait for a few clock cycles

**Expected results:**
- Internal watchdog counter is initialized
- `OE = 0`
- `AE = 0`
- No unintended feed or timeout occurs after reset

---

## Watchdog enable test (WDTEN)

**Objective:** Verify watchdog activation control.

**Steps:**
- Set `ui[0] = 1` (WDTEN = 1)
- Keep all other inputs stable
- Observe output behavior for a few cycles

**Expected results:**
- Watchdog enters active counting mode
- Output `uo[0]` reflects enabled state
- System begins countdown based on configuration

---

## Timeout behavior test (OE generation)

**Objective:** Verify watchdog triggers timeout when not fed.

**Configuration:**
- `ui[0] = 1` (enable watchdog)
- `ui[7:6] = 2'b00` (fastest clock divider)
- `ui[5:3] = 3'b000` (shortest timeout setting)
- `ui[2:1] = 2'b00` (no password mode)
- `uio[0] = 0` (no feed)

**Steps:**
- Start simulation
- Do not assert FEED
- Wait until watchdog counter expires

**Expected results:**
- `OE = 1` when timeout occurs
- Watchdog reload behavior is triggered internally

---

## No password mode test (PWD_SEL = 00 / 10)

**Objective:** Ensure feed works without authentication.

**Configuration:**
- `ui[2:1] = 2'b00` or `2'b10`
- Any value is allowed on `uio[7:1]`

**Steps:**
- Set `uio[0] = 1` (feed request)
- Provide arbitrary password value (e.g. `7'b1111011`)
- Wait a few clock cycles

**Expected results:**
- Feed is always accepted
- `AE = 0`
- Watchdog counter reloads normally
- No access restriction applied

---

## Fixed password mode test (PWD_SEL = 01)

**Default password:** 1010_110  


### Correct password case

**Steps:**
- Set `ui[2:1] = 2'b01`
- Set `uio[7:1] = 7'b1010110`
- Set `uio[0] = 1`

**Expected results:**
- `AE = 0`
- Feed accepted
- Watchdog counter reloads
- No timeout occurs

---

### Wrong password case

**Steps:**
- Set `ui[2:1] = 2'b01`
- Set `uio[7:1] = any invalid value (e.g. 7'b1111111)`
- Set `uio[0] = 1`

**Expected results:**
- `AE = 1`
- Feed rejected
- Combined error output `OR = OE | AE` becomes active when error exists

---

## Fibonacci password mode test (PWD_SEL = 11)

**Objective:** Validate dynamic password sequence checking.

**Fibonacci sequence used:** 0, 1, 1, 2, 3, 5, 8, 13, 21, ...  


> Note: Initial value `0` may appear due to internal reset state.

---

### Valid Fibonacci sequence test

**Steps:**
- Set `ui[2:1] = 2'b11`
- Feed values sequentially:
  - 1 → 1 → 2 → 3 → 5 → 8
- For each cycle:
  - Set `uio[0] = 1`
  - Provide corresponding Fibonacci number on `uio[7:1]`

**Expected results:**
- All valid Fibonacci inputs are accepted
- `AE = 0` throughout operation
- Watchdog feed succeeds continuously

---

### Invalid Fibonacci sequence test

**Steps:**
- Set `ui[2:1] = 2'b11`
- Provide incorrect values:
  - 4, 6, 7, 9, etc.
- Set `uio[0] = 1`

**Expected results:**
- `AE = 1` for invalid inputs
- Feed operation is rejected
- Error output `OR = 1` is asserted

---

## Feed behavior test

**Objective:** Verify watchdog reset behavior after successful authentication.

**Steps:**
- Enable watchdog (`ui[0] = 1`)
- Select any password mode
- Provide correct password if required
- Assert `uio[0] = 1` for one clock cycle

**Expected results:**
- Watchdog counter reloads to initial value (WDTLOAD)
- No timeout occurs after feeding
- `OE = 0` remains stable

---

## Full system integration test

**Objective:** Validate combined operation of all features.

**Steps:**
- Test different combinations of:
  - Clock divider (`DIV`)
  - Timeout selection (`TIME_SEL`)
  - Password mode (`PWD_SEL`)
  - Feed signal (`FEED`)
- Run long simulation cycles under different configurations

**Expected results:**
- Correct timeout scaling based on configuration
- Proper password enforcement in all modes
- Correct generation of `OE`, `AE`, and `OR`
- No deadlock, glitch, or invalid state transitions

---

## External hardware

All built-in, we are all in-house, no need to outsource, because we are strong enough
