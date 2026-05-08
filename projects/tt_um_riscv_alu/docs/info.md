## How it works

This module implements the complete RISC-V rv32i
arithmetic logic unit. The ALU is purely combinational —
it computes the result in the same clock cycle that
inputs are presented, with no pipeline registers.

Operand A comes from ui_in[7:4] (4 bits, values 0-15).
Operand B comes from ui_in[3:0] (4 bits, values 0-15).
The operation is selected by uio_in[3:0] using the
standard RISC-V ALU opcode encoding from riscv_defs.v.
The 8-bit result is available on uo_out[7:0].

The shift operations (SLL, SRL, SRA) use a barrel
shifter implementation with cascaded if-else stages
for each bit position of the shift amount. The
comparison operations (SLT, SLTS) correctly handle
both signed and unsigned 32-bit comparisons.

This design was extracted from a complete rv32imsu
RISC-V SoC implemented in Synopsys DC Shell and
ICC2 physical design tool on the sky130A 130nm PDK
at University of Central Florida for EEE-5390C.

## How to test

Set ui_in[7:4] to operand A (4-bit value 0-15).
Set ui_in[3:0] to operand B (4-bit value 0-15).
Set uio_in[3:0] to the ALU operation code.
Read the result from uo_out[7:0].

Test ADD: ui_in=0x53, uio_in=0x04, expect uo_out=0x08
Test SUB: ui_in=0xA3, uio_in=0x06, expect uo_out=0x07
Test AND: ui_in=0xF5, uio_in=0x07, expect uo_out=0x05
Test OR:  ui_in=0xA5, uio_in=0x08, expect uo_out=0x0F
Test XOR: ui_in=0xFF, uio_in=0x09, expect uo_out=0x00
Test SLT: ui_in=0x35, uio_in=0x0A, expect uo_out=0x01
cat > docs/info.md << 'MD'
## How it works

This module implements the complete RISC-V rv32i
arithmetic logic unit. The ALU is purely combinational —
it computes the result in the same clock cycle that
inputs are presented, with no pipeline registers.

Operand A comes from ui_in[7:4] (4 bits, values 0-15).
Operand B comes from ui_in[3:0] (4 bits, values 0-15).
The operation is selected by uio_in[3:0] using the
standard RISC-V ALU opcode encoding from riscv_defs.v.
The 8-bit result is available on uo_out[7:0].

The shift operations (SLL, SRL, SRA) use a barrel
shifter implementation with cascaded if-else stages
for each bit position of the shift amount. The
comparison operations (SLT, SLTS) correctly handle
both signed and unsigned 32-bit comparisons.

This design was extracted from a complete rv32imsu
RISC-V SoC implemented in Synopsys DC Shell and
ICC2 physical design tool on the sky130A 130nm PDK
at University of Central Florida for EEE-5390C.

## How to test

Set ui_in[7:4] to operand A (4-bit value 0-15).
Set ui_in[3:0] to operand B (4-bit value 0-15).
Set uio_in[3:0] to the ALU operation code.
Read the result from uo_out[7:0].

Test ADD: ui_in=0x53, uio_in=0x04, expect uo_out=0x08
Test SUB: ui_in=0xA3, uio_in=0x06, expect uo_out=0x07
Test AND: ui_in=0xF5, uio_in=0x07, expect uo_out=0x05
Test OR:  ui_in=0xA5, uio_in=0x08, expect uo_out=0x0F
Test XOR: ui_in=0xFF, uio_in=0x09, expect uo_out=0x00
Test SLT: ui_in=0x35, uio_in=0x0A, expect uo_out=0x01
