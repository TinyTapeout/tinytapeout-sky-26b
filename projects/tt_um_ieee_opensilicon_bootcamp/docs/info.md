
## How it works

This project implements a simple number guessing game in hardware. A 4-bit LFSR generates a pseudo-random number between 1 and 15 when a new game starts. The user has 3 attempts to guess the number. After each guess, the system provides a hint indicating whether the correct number is higher, lower, or correct. The game ends when the user guesses correctly or runs out of attempts.

## How to test

Set a guess value using `ui[3:0]`, then trigger a guess by pulsing `verify` (`ui[4]`). The outputs will indicate whether the guess is higher, lower, or correct, and show the remaining attempts. Start a new game by pulsing `new_game` (`ui[5]`). The outputs `uo[2:0]` provide hints, `uo[3]` indicates a correct guess, and `uo[5:4]` show remaining attempts.


## External hardware

No external hardware is required. LEDs or a logic analyzer can be used to observe the outputs.
