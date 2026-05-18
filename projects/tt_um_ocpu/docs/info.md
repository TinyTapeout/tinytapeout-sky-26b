<!---
This file is used to generate your project datasheet. Please fill in the information below and delete any unused sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than 512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## desc
quick and dirty repo at the LatchUp Conference, will refurbish repo for a proper submission.
python test\run.py --chip

## datapath architecture
the ocpu features a single-core architectural approach utilizing a multi-level fsm hierarchy to manage execution:
- master fsm: a top-level controller responsible for issuing global states such as `run` and `halt`.
- internal core fsm: a local multi-cycle fsm that handles the fetch-decode-execute loop.
- accumulator-based logic: to severely constrain the flip-flop footprint required per core, the datapath relies purely on an accumulator and strictly defined index registers (x, y) rather than a generalized register file.

## features (old)
- the programmer-visible registers include a 6-bit accumulator (a), index registers (x, y), and a 6-bit stack pointer (sp).
- the internal datapath consists of a 16-bit program counter (pc) plus 6-bit instruction register (ir) and memory data register (mdr).
- the peripheral registers include interrupt vector and enable registers. to securely access mbits of external memory beyond the standard 64kb address space without complicating external peripheral logic, a zero-page memory-mapped i/o (mmio) banking register is used. writing to address `0xff` (e.g., `sta $ff`) inherently flips the upper memory lines sent from the cpu out to the external serial memory, maintaining hardware simplicity and 100% isa compatibility with standard 6502 compilers.
- the controllable target pll behaves independently so the cpu clock speed can be dynamically governed externally to control power draw and test frequency bounds, the pll will be muxed with the external clock the tt chip so that we can avoid it if need be.
- we will also add a very small piece of cache that we can read to see how much overclocking we have done as our io is limited to 50mhz maybe higher if we don't use tt pcb. we can then query this cache at 50mhz and see what the overclocked rate is.

## features
- the programmer-visible registers include 8-bit `a`, `x`, `y`, and `sp`, plus 8-bit `page_reg` (instruction page) and `data_page` (data address high byte).
- the instruction path uses a 2-bit `pc` within a 4-slot iRAM page, and a latched instruction split into `ir_op`, `ir_sub`, and `ir_imm`, with an 8-bit `mdr` for data reads.
- instruction storage is a 4-slot iRAM (no per-slot dirty bit; the external fpga writes every slot back unconditionally on each page swap). the fpga loads pages over the ospi interface, and the core raises a page interrupt after the last-slot instruction executes.
- data memory accesses use a 16-bit address built as `{data_page, imm8}` and are serviced by the external fpga via the ospi register window.
- status flags implemented are carry, zero, negative, and interrupt disable. there are no hardware interrupt vector or enable registers in this revision.

## Opcodes
```
Main Opcodes (4-bit)
op[3:0] Mnemonic        Description                     Sub-field                               Notes
0x0     LDA             Load A          sub[1:0]:       00=imm, 01=abs, 10=abs+X, 11=(zp),Y     Z, N flags
0x1     STA             Store A         sub[1:0]:       00=abs, 01=abs+X, 10=(zp),Y             -
0x2     LDX             Load X          sub[0]:         0=imm, 1=abs                            Z, N flags
0x3     LDY             Load Y          sub[0]:         0=imm, 1=abs                            Z, N flags
0x4     STX             Store X         -               (abs only)                              -
0x5     STY             Store Y         -               (abs only)                              -
0x6     ALU             Arith/Logic                     See ALU table                           C, Z, N flags
0x7     BR              Branch                          See BR table                            -
0x8     JMP             Jump (intra-page)               imm8[1:0] = target PC                   -
0x9     JSR             Jump Subroutine                 imm8[1:0] = target PC                   Push PC+1 to stack
0xA     RTS             Return from Subroutine          -                                       Pop PC from stack
0xB     FARJMP          Far Jump (page cross)           sub[3]: 0=rel, 1=abs                    Page switch + reload
0xC     REG             Register ops                    See REG table                           Variable
0xD     LDSP            Load/Store page regs            See LDSP table                          -
0xE     SMOD            Self-Modify iRAM                sub[3:0] = slot                         Patch imm8 field
0xF     SYS             System                          See SYS table                           -
```

```
ALU Sub-opcodes (op=0x6, sub[3:0])
sub[3:0]                Mode            Operation               Flags
0x0–0x3                 Memory          ADD / ADC / SUB / SBC   C, Z, N
0x4–0x7                 Memory          AND / ORA / EOR / CMP   Z, N (CMP flags only)
0x8–0xB                 Shift           ASL / LSR / ROL / ROR   C, Z, N (on A)
0x8–0xF with sub[3]=1   Immediate       ADD# / ADC# / SUB#...   C, Z, N 

Encoding rule: sub[3]=0 → fetch operand from {data_page, imm8}; sub[3]=1 → operand is imm8.
```

```
Branch Conditions (op=0x7, sub[3:0])
sub[3:0]        Branch  Condition
0x0             BEQ     if Z (equal to zero)
0x1             BNE     if !Z (not equal to zero)
0x2             BCS     if C (carry set)
0x3             BCC     if !C (carry clear)
0x4             BMI     if N (minus / negative)
0x5             BPL     if !N (plus / positive)

Branch offset: imm8[1:0] (2-bit forward, same page only, max +2).
```

```
Register Ops (op=0xC, sub[3:0])
sub[3:0]        Instruction     Effect
0x0             TAX             X ← A
0x1             TXA             A ← X
0x2             TAY             Y ← A
0x3             TYA             A ← Y
0x4             INX             X ← X + 1
0x5             DEX             X ← X - 1
0x6             INY             Y ← Y + 1
0x7             DEY             Y ← Y - 1
0x8             PHA             Push A
0x9             PLA             Pop → A
0xA             TSX             X ← SP
0xB             TXS             SP ← X
0xF             NOP             No-op
```

```
Load/Store Page Regs (op=0xD, sub[3:0])
sub[3:0]        Instruction     Effect
0x0             LDA_DP          A ← data_page
0x1             STA_DP          data_page ← A
0x2             LDA_PG          A ← page_reg
0x3             LDSP            SP ← imm8
0x4             STSP            A ← SP
```

```
System Ops (op=0xF, sub[3:0])
sub[3:0]        Instruction     Effect
0x0             HLT             Halt CPU
0x1             SEI             Set Interrupt Enable
0x2             CLI             Clear Interrupt Enable
0x3             SEC             Set Carry
0x4             CLC             Clear Carry
0x5             CLV             Clear Overflow
0x6             RTI             Return from Interrupt
```