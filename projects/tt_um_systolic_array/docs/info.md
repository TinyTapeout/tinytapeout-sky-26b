<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The design starts a 3 by 3 systolic array with 4 bit input data width that is output stationary. We added control logic, registers, and SPI communication to help the design interact with the user and fit the IO requirements of tinytapeout.

## How to test

In order to test the projcet navigate to the test folder and run the test with
```sh
make -B
```
If you want to manually test the design you need to provide a SPI clock that is at most half the frequency of CLK. You must then drive the chip select bit low to begin sending a frame over the MOSI bit. The data should be fed in MSB first for each element of matrix A and matrix B row wise for the elements. If data is correctly fed in the valid frame bit will go high indicating it has been recived and the systolic array will begin computing. The data will then become available at the MISO bit coming out MSB first for each of the 9 elements in the resulting matrix.

## External hardware

Not applicable
