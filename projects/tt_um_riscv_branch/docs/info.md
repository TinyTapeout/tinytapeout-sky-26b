## How it works

The branch condition unit evaluates two 4-bit operands
A and B against the six RISC-V branch conditions defined
in the rv32i ISA specification. The design is purely
combinational producing results within the same clock
cycle that inputs are applied.

Operand A is on ui_in[7:4] and operand B on ui_in[3:0].
The branch function is selected by uio_in[2:0] using
the same encoding as the RISC-V funct3 field for branch
instructions. Result appears on uo_out[0].

Signed comparisons BLT and BGE use Verilog signed
arithmetic for correct two's complement behavior.
Unsigned comparisons BLTU and BGEU use standard
unsigned comparison.

This unit combined with the rv32i ALU tile forms the
complete arithmetic and branch decision logic of the
RISC-V execution stage.

## How to test

BEQ: ui_in=0x55 uio_in=0x00 expect uo_out[0]=1
BNE: ui_in=0x53 uio_in=0x01 expect uo_out[0]=1
BLT: ui_in=0x35 uio_in=0x02 expect uo_out[0]=1
BGE: ui_in=0x55 uio_in=0x03 expect uo_out[0]=1
BLTU:ui_in=0x35 uio_in=0x04 expect uo_out[0]=1
BGEU:ui_in=0x53 uio_in=0x05 expect uo_out[0]=0
