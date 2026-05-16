# ASCON-CXOF Hash Chain Accelerator

## What this chip does

This is a hardware accelerator for **ASCON-CXOF**, the Customizable Extendable
Output Function standardized in NIST SP 800-232 (August 2025). ASCON is a
lightweight cryptographic permutation designed for constrained devices.

The chip is intended as a **security peripheral for post-quantum
cryptographic workloads** on embedded systems, particularly flight
controllers and edge devices. ASCON-CXOF is a building block for hash-based
PQC signature schemes like SLH-DSA, LMS, and XMSS, where Merkle tree
traversal and WOTS+ chains require repeated hashing.

Cryptographic correctness was verified pre-tape-out against 8 KAT vectors
from the official ASCON team C reference. The chip produces byte-exact
output for all tested combinations of CS and message lengths.

## How to test it

The chip speaks a simple UART-based protocol at 115200 baud, 8-N-1.
Connect a host (PYNQ-Z2, USB-UART adapter, microcontroller) to the chips
UART pins and send framed commands.

Frame format from host to chip is: SOF byte 0xAA, then LEN, CMD, PAYLOAD bytes,
then two CRC bytes (low, high), then EOF byte 0x55.

Frame format from chip to host has the same layout except CMD is replaced by
a STATUS byte (0x00 = OK).

CRC is CRC16-CCITT (poly 0x1021, init 0xFFFF) computed over LEN, CMD/STATUS,
and PAYLOAD.

Quick start: send a PING frame to verify chip is alive. Then configure
CS_LENGTH, MSG_LENGTH, OUT_LENGTH registers (addresses 0x02 through 0x05).
Load customization string at addresses 0x10 through 0x2F (up to 32 bytes).
Load message at addresses 0x30 through 0x4F (up to 32 bytes). Send START
command (0x30). Poll STATUS until done bit set. Read result from addresses
0x50 through 0x6F (up to 32 bytes).

A complete C reference driver is provided in the host/ directory of the
project repository.

## External hardware

- UART connection at 115200 baud, 8-N-1 (TX/RX pins)
- 3.3V logic levels (Tiny Tapeout standard)
- 50 MHz clock (Tiny Tapeout default)

## Pin assignments

Inputs (ui_in):
- ui[0]: UART RX

Outputs (uo_out):
- uo[0]: UART TX
- uo[1]: Done IRQ
- uo[2]: Busy
- uo[3]: Error
- uo[4-5]: FSM state debug bits
- uo[6]: Heartbeat (visible activity blinky)
- uo[7]: RX active

## Limitations

- Max CS length: 32 bytes
- Max message length: 32 bytes
- Max output length: 32 bytes
- ASCON-CXOF128 only

## Roadmap

- Side-channel evaluation using ChipWhisperer
- Custom PMOD-form-factor PCB for PYNQ-Z2 integration
- ASCON-Hash, ASCON-AEAD, Haraka variants on future shuttles
- Multi-chip cluster work for parallel Merkle-tree traversal
