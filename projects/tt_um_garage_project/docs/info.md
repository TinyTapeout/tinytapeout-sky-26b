<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The project implements a finite state machine (FSM) that controls the behavior of an automatic garage door opener. The system changes state with each clock pulse (clk) and can be reset with the rst signal, returning to its initial state.
The operation is based on the following inputs:
b (button): at press, the door open, close or stop, depending its actual state.
SA and SAB (position sensors): detects if door is closed or open.
ob (obstruction): if the door is closing and detect an object crossing it, the system automatically stop the door and inmediately open it.
Depending on the current state and the inputs, the system determines the next state and activates the outputs:
MS (upward motor): Open the door.
MB (downward motor): Close the door.
The general flow is described in the Finite State Machine (See the diagram):

![](FSM.jpeg)

## How to test
Press the reset buttom to initialize the system.
Press the button "btn" to start the process and open the garage (MS=1 and MB=0), connect two LEDs on MS and MB or a H-bridge with a motor.
Activate the SA sensor to simulate the door is completely open.
Press the button again to initiate closing.
Activate SAB to indicate completely closed, or
activate ob to simulate an obstruction.
Observe the LEDs in each case:
MS on indicates up movement.
MB on indicates down movement.

## External hardware

You need only two LEDs connected on MS and MB terminals. You can improve the test with a H-bridge and a DC motor.
