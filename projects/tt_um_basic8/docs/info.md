## How it works

Basic8 is a minimal 8-bit CPU with the following features:

- 8 general purpose 8-bit registers (r0 hardwired to 0)
- 8-bit program counter (PC)
- 16-bit instruction format
- ALU operations: ADD, SUB, OR, XOR, AND, SLL, SRL, SRA
- Immediate operations: ADDI, ANDI, ORI, XORI (6-bit immediate)
- Branch instructions: BEQ, BNE (PC-relative, 6-bit offset)
- Jump and link: JAL (PC-relative, saves return address)

Instructions are 16-bit and loaded in two cycles via ui_in:
- Cycle 1: uio_in[0]=1 — ui_in high byte is latched into internal register
- Cycle 2: uio_in[1]=1 — ui_in low byte is combined with the latched high byte to form the full 16-bit instruction, which is then decoded and executed

The program counter (PC) is output on uo_out, allowing an external controller to feed instructions from a ROM.

## How to test

Connect a ROM (instruction memory) externally. On each instruction:
1. Read PC from uo_out
2. Send high byte of ROM[PC] via ui_in with uio_in[0]=1
3. Send low byte of ROM[PC] via ui_in with uio_in[1]=1
4. Repeat

See test/test.py for a cocotb testbench with full instruction set coverage.

## External hardware

None required. The CPU is driven entirely through the ui_in and uio_in pins.
