## How it works

This is a complete 8-bit accumulator-based microcontroller SoC with:

- **33-instruction ISA**: arithmetic (ADD, SUB, INC, DEC), logic (AND, OR, XOR, NOT), shifts (SHL, SHR), memory (LDA, STA, LDM, ADDA, SUBA), branching (JMP, JZ, JNZ, JC), stack (PUSH, POP, CALL, RET), I/O (IN, OUT), UART (UTXD, UTXS, UBRD), timer (TSET, TGET, TCLR), and control (NOP, HLT)
- **3/4-stage FSM pipeline**: FETCH, DECODE, [MEM_READ], EXECUTE. The MEM_READ stage is used for memory-to-ALU instructions (ADDA/SUBA) and stack reads (POP/RET)
- **32-word x 16-bit program ROM** with a hardcoded demo program
- **32-byte x 8-bit data RAM** (shared with hardware stack)
- **Hardware stack**: 5-bit stack pointer, grows downward from 0x1F, supports PUSH/POP/CALL/RET for subroutines
- **UART transmitter**: 8-N-1 serial output with programmable baud rate divisor
- **Timer/counter**: 8-bit free-running counter with programmable 8-bit prescaler
- **8-bit GPIO** with latched output and pass-through input

The demo program counts 1 to 5 on GPIO, calls a subroutine (demonstrating CALL/RET), sends 'H' over UART, reads the timer, outputs 42, then halts.

## How to test

1. Apply reset: hold `rst_n` low for at least 5 clock cycles
2. Release reset and assert `ena` (both high)
3. Observe `uo_out` pins counting: 1, 2, 3, 4, 5
4. After counting, the program demonstrates CALL/RET (GPIO shows 6), UART TX, timer (GPIO shows timer count), and final value (GPIO shows 42)
5. `uio_out[0]` goes high when the CPU halts
6. `uio_out[1]` carries the UART TX serial output
7. Optionally connect switches to `ui_in` for GPIO input (used by the IN instruction)

## External hardware

- Connect 8 LEDs to `uo_out[7:0]` to visualize GPIO output
- Connect 1 LED to `uio_out[0]` to indicate CPU halt status
- Connect a USB-UART adapter RX to `uio_out[1]` for serial output (configure baud rate via UBRD instruction)
- Optionally connect a DIP switch or buttons to `ui_in[7:0]` for GPIO input
