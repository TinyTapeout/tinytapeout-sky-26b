<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# CRC_FIFO: CRC-32 Engine with 8-Byte FIFO and VGA Display

## How it works

This project implements a CRC-32 integrity verification engine (IEEE 802.3, polynomial 0xEDB88320)
with an 8-byte internal FIFO and a real-time VGA display, designed for edge AI systems where data
reliability is critical.

### Core architecture

The design processes incoming data bytes through a serial CRC-32 engine that computes one bit per
clock cycle (8 cycles per byte). This approach minimizes logic area while remaining fully functional
within a single 1x1 Tiny Tapeout tile.

The internal blocks are:

**8-byte circular FIFO:** stores incoming data bytes written by the host via the bidirectional
data bus. Implemented with 3-bit write/read pointers for natural modulo-8 wraparound. The host
can write bytes while the CRC engine drains the FIFO concurrently.

**Serial CRC-32 engine:** processes one bit per clock cycle using the reflected polynomial
0xEDB88320 (standard IEEE 802.3, same as Ethernet). Each byte takes 8 cycles. The engine XORs
the incoming byte with the low 8 bits of the CRC register, then shifts through all 8 bits
applying the polynomial feedback on each step.

**Control FSM:** five-state machine (IDLE → LOAD → BITS → FINALIZE → DONE) that coordinates
FIFO reads, bit-by-bit CRC updates, and result finalization. The CRC register is initialized to
0xFFFFFFFF and the final result is bit-inverted per the Ethernet standard.

**Register interface:** exposes internal state through a 4-bit address / 8-bit data bus:
address 0 returns status (`{4'b0, irq, fifo_count[2:0]}`), addresses 1–4 return the four CRC
result bytes (LSB first).

**IRQ output:** goes high when the CRC result is ready (`crc_done`) or when the FIFO is full,
enabling interrupt-driven operation.

**VGA display (25 MHz, 640×480):** provides a real-time visual readout of the engine state
directly on a monitor via the TinyVGA PMOD:

- **Rows 0–79:** solid blue header bar.
- **Rows 90–149:** green FIFO occupancy bar — width scales with `fifo_count` (each unit = 64 px).
Empty FIFO shows dark green background; occupied bytes light up bright green.
- **Rows 160–219:** four 160 px status blocks showing FSM state (color-coded: grey=IDLE,
yellow=LOAD, green=BITS, orange=FINALIZE, blue=DONE), IRQ flag (red when active), enable
signal (cyan when active), and rst_crc signal (magenta when active).
- **Rows 230–309:** eight 80 px cells displaying the low 8 bits of the CRC register in real time
(orange = bit 1, dark blue = bit 0).
- **Remaining rows:** black background.


### FSM state transitions

- IDLE →(FIFO not empty AND enable)→ LOAD
- LOAD →(always)→ BITS
- BITS →(bit_cnt == 7, FIFO empty)→ FINALIZE
- BITS →(bit_cnt == 7, FIFO not empty)→ LOAD
- FINALIZE →(always)→ DONE
- DONE →(wr AND enable)→ IDLE


### Data flow

1. Host asserts `enable` (ui_in[6]) and writes data bytes into the FIFO by pulsing `wr` (ui_in[0]) while placing the byte on `uio_in[7:0]`.
2. The FSM detects a non-empty FIFO and transitions to LOAD, reading one byte from the FIFO and
XORing it into the CRC working register.
3. The BITS state shifts through all 8 bits, applying the polynomial feedback on each cycle.
4. Steps 2–3 repeat until the FIFO is drained, then FINALIZE inverts the CRC register.
5. `irq` goes high (visible on the VGA panel and readable via the register interface).
6. Host reads the 4-byte result from addresses 1–4 on the bidirectional data bus.
7. A new write (`wr` pulse while in DONE state) resets `crc_done` and returns the FSM to IDLE.


## How to test

### Simulation

The testbench captures three VGA frames and compares them against reference images using CocoTB.
On the first run, reference images are created automatically from the captured output.

    cd test
    make test

A passing result confirms the VGA timing, the register interface, and the CRC engine compile and
simulate correctly. On subsequent runs, the test compares pixel-by-pixel against the saved
references and fails if any difference is detected.

### Hardware testing (once the chip is fabricated)

**Required equipment:**

- Tiny Tapeout demo board (or FPGA with bitstream loaded)
- TinyVGA PMOD connected to `uo_out` — plug it in to see the live display
- Microcontroller (Arduino Uno, RP2040, ESP32, or similar) connected to `ui_in` and `uio`
- Optional: logic analyzer for bus signal inspection


**Step-by-step procedure:**

1. Connect the TinyVGA PMOD to `uo_out` and a VGA monitor. You should immediately see the
blue header and the status panel on screen.
2. Connect the microcontroller to `ui_in` and `uio` per the pin table below.
3. Assert `enable` (ui_in[6] = 1). The BITS block on the VGA display turns cyan.
4. Write a test message byte by byte:
  - Place the byte on `uio_in[7:0]`
  - Pulse `wr` (ui_in[0] = 1 for one clock cycle)
  - Repeat for each byte — the green FIFO bar grows on screen with each write
5. Watch the VGA FSM panel cycle through LOAD → BITS → FINALIZE → DONE as the engine
processes the bytes. The CRC bit display updates in real time.
6. When `irq` goes high (red block on VGA panel, or poll address 0 via the bus), the
result is ready.
7. Read the 4-byte CRC result:
  - Set `rd` = 1 (ui_in[1] = 1) and cycle `addr` through 1, 2, 3, 4
  - Collect the 4 bytes from `uio_out[7:0]`
  - Byte at address 1 = CRC[7:0] (LSB), address 4 = CRC[31:24] (MSB)
8. Compare with the expected CRC calculated in Python:

```python
import binascii
message = b"Hello"
expected = binascii.crc32(message) & 0xFFFFFFFF
print(f"Expected CRC-32: 0x{expected:08X}")
```

9. To run a new calculation: assert `rst_crc` (ui_in[7] = 1) for one cycle to reset the
engine and FIFO, then repeat from step 4.


**What you should see on the VGA monitor during a normal run:**

| Phase | FIFO bar | FSM block color | CRC display |
| --- | --- | --- | --- |
| Idle, no data | Empty (dark green) | Grey | All dark blue |
| Writing bytes | Growing green bar | Grey (FIFO filling) | All dark blue |
| Processing | Shrinking bar | Yellow/Green cycling | Updating |
| Done | Empty | Blue | Final CRC bits |
| IRQ active | Empty | Blue | Final CRC bits, IRQ block = red |


## External hardware

- **TinyVGA PMOD** (required for the visual display) — connects to `uo_out`.
- **Microcontroller** (Arduino Uno, RP2040, ESP32, or similar) to drive `ui_in` and the
bidirectional data bus `uio`.
- Optional: LEDs on the IRQ signal (readable from address 0, bit 3) for a simple
interrupt indicator without a monitor.
- Optional: logic analyzer for debugging bus timing.

No additional hardware beyond the PMOD and a microcontroller is needed to use the full
functionality of the module.

## Pin description

| Pin | Direction | Function |
| --- | --- | --- |
| `ui_in[0]` | Input | `wr` — write strobe: pulse high to push `uio_in` byte into the FIFO |
| `ui_in[1]` | Input | `rd` — read strobe: pulse high to output register `addr` on `uio_out` |
| `ui_in[5:2]` | Input | `addr[3:0]` — register select: 0 = status, 1–4 = CRC result bytes (LSB first) |
| `ui_in[6]` | Input | `enable` — enables FIFO writes and CRC processing; must be high during operation |
| `ui_in[7]` | Input | `rst_crc` — soft reset: clears FIFO, CRC register, and FSM (synchronous) |
| `uo_out[7]` | Output | `HSync` — VGA horizontal sync (TinyVGA PMOD) |
| `uo_out[6]` | Output | `B0` — VGA blue bit 0 (TinyVGA PMOD) |
| `uo_out[5]` | Output | `G0` — VGA green bit 0 (TinyVGA PMOD) |
| `uo_out[4]` | Output | `R0` — VGA red bit 0 (TinyVGA PMOD) |
| `uo_out[3]` | Output | `VSync` — VGA vertical sync (TinyVGA PMOD) |
| `uo_out[2]` | Output | `B1` — VGA blue bit 1 (TinyVGA PMOD) |
| `uo_out[1]` | Output | `G1` — VGA green bit 1 (TinyVGA PMOD) |
| `uo_out[0]` | Output | `R1` — VGA red bit 1 (TinyVGA PMOD) |
| `uio[7:0]` | Bidir | `data[7:0]` — data bus: driven by host when writing, driven by chip when reading |


## Performance

| Parameter | Value |
| --- | --- |
| CRC polynomial | 0xEDB88320 (IEEE 802.3 / Ethernet, reflected) |
| CRC width | 32 bits |
| Processing rate | 1 bit per cycle → 8 cycles per byte |
| Throughput at 25 MHz | ~3.125 Mbps (25 MHz / 8) |
| FIFO depth | 8 bytes |
| VGA resolution | 640 × 480 @ 25 MHz |
| Clock domain | Single (25 MHz) |
| Tile size | 1 × 1 |


---

## Educational Use — University Laboratory Guide

This chip was designed with educational applications in mind. The following laboratories use the
physical chip as the central learning artifact, progressing from basic understanding through
offensive security and intelligent agent integration.

> **Prerequisites:** Physical chip fabricated and mounted on a Tiny Tapeout demo board, TinyVGA
> PMOD, and a microcontroller (Arduino, RP2040, or ESP32).

---

### LAB 1 — "El Chip Habla: Verificación de Integridad Hardware vs Software"

**Description:**
Students compute CRC-32 checksums of various messages in Python/C, then send the same data to
the physical chip and compare results bit by bit.

**Objective:**
Understand that CRC-32 is not just an abstract algorithm — it is real circuitry etched in silicon
executing the same mathematics used by Ethernet, ZIP, and PNG.

**What makes it interesting:**
When the student sends `"Hello"` to the chip, the VGA monitor shows the CRC bits shifting in
real time as the engine runs. Watching hardware compute live is fundamentally different from
calling a Python function.

**Knowledge gained:**
Solid foundation in data integrity, the difference between software and hardware implementations,
and how the network link layer works internally.

---

### LAB 2 — "Ataque por Corrupción: ¿Puede el CRC Detectarlo?"

**Description:**
Students transmit messages to the chip and record the resulting CRC. They then alter specific
bits of the message (1 bit, 2 bits, burst errors) and recalculate. They map which corruption
patterns are detected and which slip through.

**Objective:**
Understand the real limits of CRC-32 as an error-detection mechanism and why it is insufficient
as a security control.

**What makes it interesting:**
Students experimentally discover CRC collisions — two different messages that produce the same
checksum. The chip confirms this physically, not just theoretically.

**Knowledge gained:**
The critical difference between **error detection** (CRC) and **tamper detection** (HMAC,
digital signatures). Foundation for understanding why checksums alone are not enough in
cybersecurity contexts.

---

### LAB 3 — "Man-in-the-Middle Físico: Intercepta y Falsifica"

**Description:**
One student acts as the transmitter, another as an attacker using a logic analyzer to intercept
the `uio` bus. The attacker must modify the message in transit and recalculate a valid CRC so
the receiver detects no alteration.

**Objective:**
Simulate a physical MitM attack where CRC provides no protection because the attacker can
recompute it.

**What makes it interesting:**
The attacker also has access to an identical chip — they use it to compute the CRC of the
forged message before injecting it. Hardware attacking hardware.

**Knowledge gained:**
Why modern protocols use secret keys in the integrity process (HMAC-SHA256). CRC has no
secret — anyone can compute it. This naturally motivates the study of applied cryptography.

---

### LAB 4 — "El Agente que Protege: CRC como Sensor de un IDS Hardware"

**Description:**
This is where the intelligent cybersecurity agent enters. A pipeline is built where the CRC chip
acts as a **real-time integrity sensor** for a stream of network packets. The agent receives
the `irq` signal and the resulting CRC from the chip, compares them against a database of known
signatures, and decides whether each packet is legitimate or anomalous.

**Objective:**
Integrate physical hardware into the decision loop of a cybersecurity agent. The chip offloads
integrity computation from the agent's CPU, freeing resources for reasoning.

**What makes it interesting:**
The agent does not compute the CRC — the chip does it in hardware at 3.125 Mbps. The agent
only consumes the result via `irq` and acts. This is a real **hardware offloading** architecture,
identical to how modern network interface cards (NICs) work.

**Knowledge gained:**
Architecture of intrusion detection systems (IDS), hardware-assisted security, how intelligent
agents can have physical sensors, and the design of hybrid security pipelines (hardware + AI).

---

### LAB 5 — "Forensia Digital: El CRC como Evidencia"

**Description:**
Files are stored with their CRC computed by the chip. Days later, students recompute the CRC
using the same chip and detect whether files were modified. They then investigate who changed
them and when.

**Objective:**
Apply data integrity to a forensic context — verifying that digital evidence has not been
altered since collection.

**What makes it interesting:**
The chip produces a physical "seal" of the file. If the CRC does not match, the file was
touched. Simple, tangible, and demonstrated visually on the VGA monitor in the classroom.

**Knowledge gained:**
Digital chain of custody, hashing and integrity in forensics, and why legal institutions require
integrity verification for electronic evidence. Also surfaces the limitations of CRC for this
purpose (an attacker can recompute it), naturally leading to a discussion of cryptographic
hashing with SHA-256.

---

### Laboratory Progression

The five laboratories form a deliberate pedagogical arc using the physical chip as the common
thread throughout:

```
LAB 1 → Understand what the chip does
LAB 2 → Discover its limits
LAB 3 → Exploit it as an attacker
LAB 4 → Integrate it into an intelligent defense agent
LAB 5 → Apply it to real digital forensics
```

Students do not simulate — they work with real silicon at every step.

---

## Author

**Jorge Luis Chuquimia Parra** — GitHub: [27jorge05](https://github.com/27jorge05)

**Jorge Luis Chuquimia Parra**
GitHub: [27jorge05](https://github.com/27jorge05)
