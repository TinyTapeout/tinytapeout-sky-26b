<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

### Proyect files
| File | Description | Primary function |
|-----------|-------------|---------------|
| **Memory Bank** | Memory bank module | Data storage and read/write logic using enables |
| **TOP** | Top module of the memory bank | An interface that enables connections to the simulator to conduct GDS tests |

The project consists of a memory bank named “tt_um_BCR” that can store 8 data bits, each 8 bits in length; these can be accessed via the ‘we’ and “re” enable inputs, which makes the process easier since read and write operations are independent.

# Cell usage by category

| Category | Cells | Count |
|---------------|----------|-------|
|Fill | [decap](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/decap/README.html) [fill](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/fill/README.html) | 3244|
|Tap | [tapvpwrvgnd](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/tapvpwrvgnd/README.html) | 225|
|Misc | [dlygate4sd3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/dlygate4sd3/README.html) [conb](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/conb/README.html) | 80|
|Flip Flops | [dfrtp](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/dfrtp/README.html) | 72|
|Multiplexer | [mux2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/mux2/README.html) | 64|
|Combo Logic | [and3b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and3b/README.html) [nor3b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor3b/README.html) [a22o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a22o/README.html) [a221o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a221o/README.html) [o21a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o21a/README.html) [and4b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4b/README.html) [or4b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or4b/README.html) [and4bb](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4bb/README.html) | 57|
|Clock | [clkdlybuf4s25](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/clkdlybuf4s25/README.html) | 31|
|Buffer | [clkbuf](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/clkbuf/README.html) [buf](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/buf/README.html) | 18|
|OR | [or3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or3/README.html) [or4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or4/README.html) | 9|
|AND | [and2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and2/README.html) [and3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and3/README.html) [and4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4/README.html) | 5|
|NOR | [nor2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor2/README.html) [nor3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor3/README.html) | 2|
|Inverter | [inv](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/inv/README.html) | 1|
## 339 total cells (excluding fill and tap cells)


## How to test

The module has a total of 7 inputs:
Clock input (clk)
Reset input (rst_n)
Write pointer input (addr_w)
Read pointer input (addr_r)
Data input (data_in)
Write enable input (we)
Read enable input (re)

And 1 output:
Output of the data to be read (data_out)


It works as follows:
It consists of a simple 8-bit data register with a capacity of 8 bits.

When you want to store data via the data_in input, the write signal (we) is activated, and the address where the data is to be stored is provided via the addr_w input.

When you want to view or read data that has already been stored, the read signal (re) is activated, and the address of the data to be read is provided via the addr_r input.




## External hardware

No external hardware was needed.
