### PROJECT DESCIPTION ###

The project is a maze that is displayed on a VGA monitor where you can control
a player using four buttons (left, right, up, and down) in order to navigate
through and avoid getting caught by the ghost. 

The logic is broken into the following sections:

### PLAYER LOGIC ### 
The player is controlled by the button inputs (left, right, up, down) and will
move accordingly on the map. There is also collision detection with the border
and with the maze itself.

### GHOST LOGIC ###
The ghost is set to try and follow the player around on the board. It will
attempt to locate the player at all times, although sometimes it gets stuck
with an obstacle and can't catch the player. The direction of the ghost is 
chosen using an FSM with different states for the direction that the ghost is 
travelling in and changes state depending on where the player is in relation
to itself.

### MAZE LOGIC ###
The maze or map are draw on the map and also detect for collisions throughout
using different boundary checks to make sure that if there would be a collision,
the player or ghost's coordinates don't get updated.

### TESTING ###
You can test the project using the provided testbench or playing the game
yourself.

### EXTERNAL HARDWARE ###
- VGA Monitor (display)
- 5 Buttons wired as follows:

| Button | Input pin |
|--------|-----------|
| Reset  | ui[0]     |
| Left   | ui[1]     |
| Right  | ui[2]     |
| Up     | ui[3]     |
| Down   | ui[4]     |

Each button should connect the input pin to VCC when pressed (active high). The VGA connector wires directly to the output pins — no resistors or level shifting required for the Tiny Tapeout VGA PMOD.
