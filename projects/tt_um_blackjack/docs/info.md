## How it works

This is a complete Blackjack card game implemented in Verilog for TinyTapout 1x1 tile. The design uses a 5-state finite state machine (FSM) to manage the game flow:

**States:**
- **IDLE**: Waiting for reset to start a new game
- **DEAL**: Dealing initial 4 cards (2 to player, 2 to dealer)
- **PLAYER_TURN**: Player can hit (draw card) or stand
- **DEALER_TURN**: Dealer draws cards until reaching 17 or busting
- **GAME_OVER**: Display results and wait for reset

**Card System:**
- Cards are generated using an 8-bit LFSR (Linear Feedback Shift Register) for randomness
- Card values: 2-10 (face value), J/Q/K=10, A=1 or 11 (automatic 1/11 logic)
- Effective sums are calculated with ace handling (ace counts as 11 if total ≤21, otherwise 1)

**Game Logic:**
- Player wins if: dealer busts, player has blackjack (21) and dealer doesn't, or player sum > dealer sum
- Dealer wins if: player busts, dealer has blackjack and player doesn't, or dealer sum > player sum
- Push (tie) if: both have blackjack or sums are equal

**Display Multiplexing:**
- 3-bit sum output shows either player or dealer total
- `show_player_led` indicates player sum is displayed
- `show_dealer_led` indicates dealer sum is displayed
- In GAME_OVER state, display alternates between player and dealer sums

## How to test

**Hardware Setup:**
1. Connect clock signal to `ui[0]`
2. Connect reset button to `ui[1]` (active high)
3. Connect hit button to `ui[2]`
4. Connect stand button to `ui[3]`
5. Connect LEDs to `uo[0]` (show_player), `uo[1]` (show_dealer), `uo[2]` (win), `uo[3]` (lose), `uo[4]` (push)
6. Connect 7-segment display to `uo[5:7]` for sum display

**Test Procedure:**
1. Press reset (`ui[1]`) to start a new game
2. Observe initial deal: 4 cards dealt automatically
3. During PLAYER_TURN (show_player_led on):
   - Press hit (`ui[2]`) to draw another card
   - Press stand (`ui[3]`) to end your turn
4. Watch DEALER_TURN: dealer draws until 17+ or bust
5. Check GAME_OVER results:
   - `win_led` on: you won
   - `lose_led` on: dealer won
   - `push_led` on: tie
   - Sum display alternates between player and dealer totals

**Simulation:**
Run testbench with:
```bash
iverilog -o tb.vvp test/tb.v src/project.v
vvp tb.vvp
```

## External hardware

**Required:**
- Clock source (any frequency, typically 1-10 MHz for visible display)
- 4 push buttons (reset, hit, stand, optional)
- 5 LEDs (show_player, show_dealer, win, lose, push)
- 1x 7-segment display (3-bit input)

**Optional:**
- Debouncing circuitry for buttons
- Additional display for card visualization
- Audio feedback for game events
