<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The circuit takes an 8-bit input value and produces two outputs: the number of iterations required to reach 1 and a status bit indicating whether the calculation is in progress or complete. Once the process is finished, the circuit keeps the value of the iterations indefinitely so that it can be checked.

## How to test
To test the circuit it is necessary to have as input the clock signal, a number of maximum 8 bits and the rst_n signal to start the iterations. It is taken into account that rst_n is at 0 when it is active, so once it takes this value, the circuit begins to perform the calculations until it reaches 1, then it keeps the values.


## External hardware
None external Hardware, just use switches.
