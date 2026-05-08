<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is a tool to practice the concepts of DFT. The base project is a Universal 4-Bit Shift Register. The complete system holds two separate registers. Each register has a small scan chain (based on muxed scan flip-flops). The Scan Select is active in high. During normal operation, the system behaves as the Universal 4-Bit Shift Register described in the next sections. In scan mode the four flip flops enter scan mode. Use the SI input to shift the test pattern, and the SO output to read the output. 

One of the registers include "stuck-at faults". To enble the "faults" use the ERR two bit input. ERR at 00 is normal mode, while 01, 10 and 11 will trigger a fault in the system. 

# Universal 4-Bit Shift Register (`uni_reg`)
The `uni_reg` module is a versatile, synchronous 4-bit universal register written in Verilog. It can hold, load, shift, count, and perform advanced logic operations (LFSR and CRC-4) based on a 3-bit control signal. 

## I/O Ports for UNI_REG

| Port Name | Direction | Width | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | 1-bit | System clock. All operations trigger on the positive edge. |
| `reset` | Input | 1-bit | Synchronous active-low reset. When `0`, clears the register to `0000`. |
| `control` | Input | 3-bit | Operation mode selector. |
| `data_i` | Input | 4-bit | Parallel data input used for load, shift, and CRC operations. |
| `data_o` | Output | 4-bit | Synchronous 4-bit register output. |

### Operational Modes

The 3-bit `control` input defines the following 8 operations:

| Control (`2:0`) | Mode | Description | Internal Logic |
| :--- | :--- | :--- | :--- |
| `000` | **Hold State** | Maintains the current value without changing. | `q <= q` |
| `001` | **Parallel Load** | Captures the complete 4-bit value from `data_i`. | `q <= data_i` |
| `010` | **Count Up** | Acts as a sequential up-counter, incrementing by 1. | `q <= q + 1` |
| `011` | **Count Down** | Acts as a sequential down-counter, decrementing by 1. | `q <= q - 1` |
| `100` | **Shift Right** | Shifts bits right; pulls in `data_i[3]` as the new MSB. | `q <= {data_i[3], q[3:1]}` |
| `101` | **Shift Left** | Shifts bits left; pulls in `data_i[0]` as the new LSB. | `q <= {q[2:0], data_i[0]}` |
| `110` | **LFSR** | Operates as a Linear Feedback Shift Register for pseudo-random sequencing. | `q <= {q[2:0], q[3] ^ q[2]}` |
| `111` | **CRC-4** | Performs a 4-bit Cyclic Redundancy Check step for data integrity. | `q <= {q[2], q[1], q[3] ^ data_i[0] ^ q[0], q[3] ^ data_i[0]}` |

## How to test

Set the right operational mode (control) and the other system inputs. For normal mode, set SE to zero and ERR to zero. Both registers should present the same output. When ERR is different than zero then the "ERR register" should present faulty outputs. Generate the right stimuli to test the faults. 

## External hardware

The user might need some FPGA or microcontroller to manipulate the system correctly.
