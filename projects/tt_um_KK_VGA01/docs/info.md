<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A motor track racing game for up to 4 players.
Each player controls his/her bike using a single input pin: 0 - straight+accelerate, 1 - turn left+brake.
Outpace your opponents and don't fall out of the track!

![image](Screenshot.png)

## How to test

Connect to VGA. Reset to start a new race. Use Input pins 0..3 to control motobikes.

## External hardware

- VGA output PMOD
- 4 input signals from physical switches (active 1) on Input[3:0]
