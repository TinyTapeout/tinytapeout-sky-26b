<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a hardware accelerator for neuronal computations using bfloat16 numbers. 
Supported operations include addition/subtraction, multiplication which are performed on an accumulator to support sequential operations such as continuous summations and products.

An mode-0 SPI interface is used to define the operation and feed the data. SPI interface uses 16-bit words, where the most significant bit is first (MSB First). SS signal is active low, and data are sampled on rising edge of SCLK signal. SCLK is low on the idle state.

Module is designed for 50MHz clock, so it's recommended to use SPI clock frequencies up to 6,25 Mbps.

On each SPI frame the first 16-bit word defines the operation as shown below. The next 16-bit words are bfloat16 numbers. SPI communication is full-duplex, so the current value of the accumulator (ACC) is transmitted over MISO any time that a new 16-bit word is received.

| Interface | Word 0   | Word 1   | Word 2   | ... | Word N   |
|-----------|-----------|-----------|-----------|-----|-----------|
| MOSI      | Operation | Operand 1 | Operand 2 | ... | Operand N |
| MISO      | ACC       | ACC       | ACC       | ACC | ACC       |

The Operation word defines how Accumulator (ACC) is cleared on the frame start and the operation to be performed:

| 15-12 | 11-10   | 9-8   | 7-0 |
|-----------|-----------|-----------|-----------|
| 0x00: SUM       | x | 00: ZERO: Load ACC with 0.0  | x |
| 1x00: SUB       | x | 01: ONE: Load ACC with 1.0 | x |
| 0x01: MPY       | x | 1X: Don't change ACC | x |

For example, in a 5-word frame, if the Operation word is 0000_xx_00_xxxx_xxxx, and the sequence of operands are 1.0, 2.0, 3.0, and 4.0, the accumulator is cleared on start, and the values returned by the interface are 0.0, 0.0, 1.0, 3.0, 6.0 since the accelerator performs the operation 1.0+2.0+3.0+4.0, and returns partial accumulations. Note that the final result is not returned. If you need the final result you need a 6-word frame by sending a 0.0 as the operand N. 

## How to test

You just need to attach the hardware accelerator to a any microcontroller with SPI port. Remember to configure the SPI as mode-0, MSB First and no more than 6,25Mbps. We include an Arduino UNO test proram (test.ino) into test folder. 

## External hardware

Any microcontroller with SPI serial interface, i.e. an Arduino-based board. 