<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

I created a very basic memory controller module interacting with a request queue 
and a fake memory. There is a bank table as well that keeps track of all 
the open banks and rows. It takes the oldest request from the 
request queue and services the memory requests in order.

The CPU tb sends the memory address and a read or write request, which is put
into the request queue. My memory controller is the interface between the request
queue and fake memory, servicing the decoded requests when the memory bus is idle.

The memory controller also has a bank table that keeps track of which bank/row
is open, and if the project wants to develop further, the bank table can be
used for scheduling the memory requests in different ways.

Parameters of the design:
Although the design was initially intended for multiple banks, for the purposes
of reducing the area, the final design only includes 1 bank, 2 rows, and 2 cols.

Freqeuncy of the design:
For the frequency, the design is able to run safely with a 50MHz clock.

The interface is as follows:

Inputs (11 input pins):

ui_in[7:0] used for req_data: 
This is the input data from the tb CPU sending either the address (for reads/
first phase of writes) or the write data (for the second phase of write)

uio_in[3] req_phase:    // indicates write phase type
Write protocol phase — 0 = address, 1 = data

uio_in[4] req_rw :      // indicates req type
0 = read request, 1 = write request

uio_in[5] req_valid:
Asserted for one cycle to submit a request

Outputs (11 output pins):
uo_out[7:0] resp_data:
Read data returned from memory

uio_out[2]  resp_valid:
Pulses high when a response is ready

uio_out[1]  resp_bz:
Controller busy — not ready to accept new requests

uio_out[0]resp_rw
Echoes the transaction type: 0 = read response, 1 = write ack

To talk a little bit more about the CPU protocol...
WRITE takes 2 cycles
cycle 0: req_valid=1, req_rw=1, req_phase=0, req_data=ADDR
cycle 1: req_valid=1, req_rw=1, req_phase=1, req_data=WDATA

READ takes 1 cycle
cycle 0: req_valid=1, req_rw=0, req_phase=x, req_data=ADDR

## How to test
I initially coded all of my design in system verilog and used sv2v to convert
it to verilog. For the majority of the testing, I used my system verilog code
with a system verilog testbench.

Using any system verilog simulators, you can run the files
mem_ctrler.svh request_q.sv mem_ctrl.sv cycho_testbench.sv in the 
folder_for_sv_design folder to cover some test cases I've listed below.

- Filling up the entire fake memory and checking every cell
- Back to back reads
- Same cycle read + write
- Overwriting previous address and checking if new value is updated
- Testing row conflicts
- Data that is all 0s or all 1s

Using the system verilog design + tb, I have attached an image of a basic 
read + write request waveform in the under the docs folder. (read_write.jpg).

After converting to the verilog files, I have also created a very simple 
cocotb tb, included in the simple.py file under the test folder.


## External hardware
none 
