<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a mini implementation of the nostalgic game Bomberman. It supports
two players, where each player has an up, down, left, right, and bomb button.

## How to test

Plug into the VGA monitor to see if the chip works. 

## External hardware

- VGA Pmod (https://store.tinytapeout.com/products/TinyVGA-Pmod-p678647356)
- Buttons (10x), wires, resistors, breadboard

## Implementation Details

Below is a more detailed view of how the implementation works:

### "tt_um_sker.v"
  
tt_um_sker module
- Wires the ports from the chip to the chip interface.
- In: "btn_up1"
- In: "btn_down1"
- In: "btn_left1"
- In: "btn_right1"
- In: "btn_up2"
- In: "btn_down2"
- In: "btn_left2"
- In: "btn_right2"
- In: "btn_bomb1"
- In: "btn_bomb2"

- Out: "red[0]"
- Out: "red[1]"
- Out: "green[0]"
- Out: "green[1]"
- Out: "blue[0]"
- Out: "blue[1]"
- Out: "VS"
- Out: "HS"

### "ChipInterface.sv"

ChipInterface module
- Connects Bomberman, VGA, and Display modules

### "Bomberman.sv"

Bomberman module
- Contains all the game logic
- Connects modules below together

Winner module
- Determines if a player has won based on if player 1 and 2 is alive

BombCounter module
- Counter for Bomb

Bomb module
- Determines bomb location and status based on player location and bomb button press


Player module
- Keeps track of the player location and alive status with buttons and other obstacles

ButtonBuffer module
- Buffer state for movement to be based on button press instead of hold

PrevPlayer module
- Keeps track of the previous location of a player

CurrMap module
- Logic for the current map display based on player locations, bomb locations, etc. 

ResetMap module 
- Value for default map on game start/reset

PrevMap module
- Stores the previous map in registers

Synchronizer module
- Synchronizer for buttons

### "VGA.sv"

VGA module
- Handles VGA display signals HS, VS, red, green, blue

### "Display.sv"

- Display encoding:
- 0: grass
- 1: breakable
- 2: unbreakable
- 3: fire
- 4: bomb
- 5: player1
- 6: player2

Display module
- Determines the rgb display values based on player location, current map, etc. 

MapDisplay module 
- Gives details of map display from player logic, splits rows and columns for map display

MapDisplayDecoder module
- Gives rbg values based on map value
