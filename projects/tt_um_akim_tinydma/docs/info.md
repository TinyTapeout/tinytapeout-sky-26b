## TinyDMA-2C

TinyDMA-2C is a two-channel byte DMA engine for Tiny Tapeout. It copies data between addresses in an external SPI PSRAM device through a small scheduler, a byte-wide DMA controller, and a single-bit SPI PSRAM controller.

The submitted TinyTapeout-sized build uses 16-bit internal addresses and 8-bit transfer lengths to fit the `1x2` tile budget. The PSRAM controller sends standard SPI read/write commands with a 24-bit address phase; the upper address byte is driven as zero and the internal 16-bit address supplies the lower two bytes.

## Pinout

Configuration enters through the dedicated input bus and two UIO control strobes:

- `ui_in[7:0]`: configuration command or data byte
- `uio_in[0]`: `cfg_valid` strobe
- `uio_in[1]`: `start` strobe
- `uio_in[2]`: SPI MISO from the PSRAM

The SPI outputs are on UIO pins 3 through 5:

- `uio_out[3]`: SPI chip select, active low
- `uio_out[4]`: SPI clock
- `uio_out[5]`: SPI MOSI to the PSRAM

The bidirectional output-enable mask is fixed at `uio_oe = 8'b0011_1000`, so only `uio[3]`, `uio[4]`, and `uio[5]` are driven by the design. Unused UIO outputs are tied low.

Status is reported on `uo_out`:

- `uo_out[0]`: any DMA channel active
- `uo_out[1]`: done pulse when either channel completes
- `uo_out[2]`: channel 0 done
- `uo_out[3]`: channel 1 done
- `uo_out[4]`: channel 0 active
- `uo_out[5]`: channel 1 active
- `uo_out[6]`: configuration adapter is waiting for a data byte
- `uo_out[7]`: invalid configuration sequence detected

## Configuration Protocol

Each register byte write is sent as two `cfg_valid` pulses:

1. command byte
2. payload byte

Command byte format:

- bit 7: must be `1`
- bit 6: channel select, `0` for channel 0 and `1` for channel 1
- bits 5:4: register field, `00` source, `01` destination, `10` length, `11` control
- bits 3:2: byte index within the register, low byte first
- bits 1:0: unused, write as `0`

The current build accepts:

- source and destination: byte indices 0 and 1, forming a 16-bit address
- length: byte index 0 only, forming an 8-bit byte count
- control: byte index 0 only

The control byte uses:

- bit 0: arm channel for the next `start` pulse
- bit 1: increment source after each byte
- bit 2: increment destination after each byte

The adapter stores the arm bit separately. When `uio_in[1]` is pulsed, any armed channel has its internal start bit asserted and the DMA begins.

## Example

To configure channel 0 to copy 4 bytes from `0x0010` to `0x0020` with both addresses incrementing, pulse `cfg_valid` for each byte below:

- command `0x80`, payload `0x10`: channel 0 source byte 0
- command `0x84`, payload `0x00`: channel 0 source byte 1
- command `0x90`, payload `0x20`: channel 0 destination byte 0
- command `0x94`, payload `0x00`: channel 0 destination byte 1
- command `0xA0`, payload `0x04`: channel 0 length
- command `0xB0`, payload `0x07`: channel 0 control, arm plus increment source and destination

Then pulse `uio_in[1]` to start the armed channel.

## External Hardware

The design targets a QSPI PMOD containing APS6404 PSRAM, used here in single-bit SPI mode. The FPGA bring-up used the PMOD connection that maps:

- CS to `uio[3]`
- SCK to `uio[4]`
- MOSI to `uio[5]`
- MISO to `uio[2]`

## Verification

The project was checked at several levels:

- cocotb test of the Tiny Tapeout wrapper protocol and SPI PSRAM model
- RTL simulations of the SPI master, PSRAM controller, DMA subsystem, and top-level DMA path
- FPGA PSRAM bring-up with real PMOD hardware
- FPGA test harness that drives the actual Tiny Tapeout-style IO wrapper
- UART-driven FPGA test scripts covering raw PSRAM access, channel 0 copy, channel 1 fixed-source fill, fixed-destination behavior, zero-length transfer, and a longer 16-byte transfer

The GitHub Actions `test` and `gds` flows have also been run successfully for the Tiny Tapeout repository.
