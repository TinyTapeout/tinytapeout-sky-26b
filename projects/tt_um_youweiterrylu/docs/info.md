<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a Direct Memory Access (DMA) controller designed around a ring-buffer descriptor model. Software configures the DMA over an SPI interface and submits transfer descriptors by advancing a tail pointer; hardware processes them autonomously and advances a head pointer when done.

The design is composed of four main blocks:

- **SPI CSR (`spi_csr`)** — SPI mode-0 register interface. Exposes 8 byte-addressable registers for base address, ring length, head/tail pointers, control, status, and IRQ. All configuration and monitoring is done through this interface.
- **Ring Manager (`ring_manager`)** — Tracks head and tail pointers. When a new descriptor is available (tail > head), it fires a fetch request to the movement pipeline and advances the head pointer on completion.
- **Movement Top (`movement_top`)** — Contains the Descriptor Fetcher and Data Mover. The Descriptor Fetcher reads a descriptor from the address provided by the ring manager. The Data Mover decodes the descriptor and issues a read or write instruction. An internal memory stub is used in place of an AXI4 master for this tapeout.
- **IRQ (`IRQ`)** — Generates a consolidated interrupt output on two events: ring empty (all descriptors processed) and error (fetch failure). Interrupt enable and W1C clear are controlled via the CSR.

## How to test

1. **Reset** — Assert `rst_n` low then release.
2. **Configure via SPI** — Use an SPI master (mode 0, MSB first) connected to `ui[0]` (SCLK), `ui[1]` (MOSI), `ui[2]` (CSN), and `uo[0]` (MISO) to write the following registers:
   - `0x00` / `0x01` — Base address low/high bytes of the descriptor ring in memory.
   - `0x02` — Ring length (number of descriptors).
   - `0x04` — Control: set bit 0 to enable, bit 2 to enable interrupts.
3. **Submit a descriptor** — Write the tail pointer register (`0x03`) to 1. The ring manager will detect head != tail and trigger the movement pipeline.
4. **Monitor outputs** — Probe signals on `uo[2:7]` and `uio[7:0]` show internal pipeline activity in real time:
   - `uo[2]` pulses when the ring manager issues a fetch request.
   - `uo[3]` pulses when the descriptor fetcher writes a handle.
   - `uo[4]` pulses when the data mover produces an instruction.
   - `uo[5]` indicates the transfer direction (0 = write, 1 = read).
   - `uo[6]` is high when the ring is empty (head == tail).
   - `uo[7]` is high while a descriptor is in-flight.
   - `uio[7:0]` shows the lower 8 bits of the current descriptor address.
5. **Interrupt** — `uo[1]` (IRQ) goes high when the ring empties or an error occurs (if IRQ enable is set). Clear by writing `0x07` with the appropriate W1C bits via SPI.

## External hardware

- SPI master (e.g. microcontroller, FTDI, or logic analyzer with SPI mode) connected to `ui[0]` (SCLK), `ui[1]` (MOSI), `ui[2]` (CSN), and `uo[0]` (MISO).
- No other external hardware required. The DMA operates against an internal memory stub for this tapeout revision.
