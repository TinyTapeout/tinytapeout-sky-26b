<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This project is a SV implementation of the Snake game, except the maximum 
snake size is capped at 20 to fit the 1x2 tile limit, and the snake is rainbow
for fun. The game is displayed via a VGA interface (640x480 resolution) and the gameboard
is 8x8 tiles centered centered in the middle of the screen. Each game tile is 32x32 pixels
so the gameboard is 256x256 pixels.

The snake is implemented as a 20-tile shift register storing each tile of the current
snake's row/col. This shift register takes up the majority of the tile space hence the cap
at length=20. But, you can still keep playing the game after the maximum snake size
is reached, the snake just won't grow anymore. You'll see the displayed scores turn 
purple when the max size is reached and they can keep incrementing till score=99
since I only put enough space for 2 BCD digits. If you're a total beast at snake game and 
reach 99 points, the score will just hold there as I didn't have the space for a
special endgame visual.


## How to test

1. Hook up a 25MHz clock to the chip (since the VGA is running at 640x480 resolution - 
technically should be 25.175MHz pixel clock but 25MHz has been working just fine for me).
2. Hook up rst_n to a button or something else that you can easily pulse.
3. Hook up buttons or joystick to the ui_in[4:1] input pins aka the snake direction control pins.
4. Also hook up a button to ui_in[7] for the start_game control input.
5. Connect R0, R1, G0, G1, B0, B1 (6-bit RGB) and VGA_HS, VGA_VS pins to TinyVGA PMOD board, and connect that PMOD to a VGA monitor.
6. You can also connect the output LEDs if you want, but this is optional as the LED
outputs are just showing the current button presses.
7. Hopefully you should be able to play now!


## External hardware
1. 6x buttons, or 2x buttons if using joystick for move controls
2. Joystick if desired
3. VGA monitor + VGA cable
4. TinyVGA PMOD connector (I only have 6-bit RGB)
5. 4x LEDs if desired
