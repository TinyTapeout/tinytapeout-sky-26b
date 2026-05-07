<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This Solution reads input from the BFD1000 5-channel IR to control the robot motor wheels.
The sensor has 5 inputs, S1, S2, S3, S4, S5, giving a 1 output for blanc color and 1 for white color. The CLP pin outputs a 1 when a collision occurs, and the near pin outputs a 1 when an obstacle is detected.
The outputs are the left and right motors' ON/OFF signal, and the direction control. We also add velocity since we are doing PWM directly from the clock pin.<br>


| S1 | S2 | S3 | S4 | S5 | CLP | Near | EnL | DirL | EnR | DirR |      Observation    |
|----|----|----|----|----|-----|------|-----|------|-----|------|---------------------|
| x  | x  | x  | x  | x  |  1  |   x  |  0  |  x   |  0  |   x  | Stop                |
| x  | x  | x  | x  | x  |  x  |   1  |  0  |  x   |  0  |   x  | Stop                |
| 1  | 1  | 0  | 1  | 1  |  0  |   0  |  1  |  1   |  1  |   1  | Forward full speed  |
| 1  | 0  | 0  | 1  | 1  |  0  |   0  |  0  |  x   |  1  |   1  | Low correction left |
| 1  | 0  | 1  | 1  | 1  |  0  |   0  |  0  |  x   |  1  |   1  | High correction left|
| 0  | 0  | 1  | 1  | 1  |  0  |   0  |  1  |  0   |  1  |   1  | rotate left         |
| 0  | 1  | 1  | 1  | 1  |  0  |   0  |  1  |  0   |  1  |   1  | full rotate left    |
| 1  | 1  | 0  | 0  | 1  |  0  |   0  |  1  |  1   |  0  |   x  | Low correction right|

<br>
The logical equations are then:<br>
Left motor control:<br>
EnL = (s1&s2&s3&~s4)|(s1&s2&s3&~s5)|(s1&s2&~s3&s5)|(s1&s2&~s4&s5)|(~s1&~s2&~s3&~s4&~s5)|(~s1&s3&s4&s5)<br>
DirL = (s1&s2&s3&~s4)|(s1&s2&s3&~s5)|(s1&s2&~s3&s5)|(s1&s2&~s4&s5)|(~s1&~s2&~s3&~s4&~s5)<br>

Right motor control:<br>
EnR = (s1&s2&s3&~s5)|(s1&~s2&s4&s5)|(s1&~s3&s4&s5)|(~s1&~s2&~s3&~s4&~s5)|(~s1&s3&s4&s5)|(~s2&s3&s4&s5)<br>
DirR = (s1&~s2&s4&s5)|(s1&~s3&s4&s5)|(~s1&~s2&~s3&~s4&~s5)|(~s1&s3&s4&s5)|(~s2&s3&s4&s5)<br>

<br><br>


## How to test

Simulations are performed on the NEXYS4 FPGA board using the AMD Vivado tool. 
Connect the BFD1000 sensor as follows:
- S[5:1] to ui_in[4:0]
- Clip to ui_in[5]
- Near to ui_in[6]
- PWM to ui_in[7] in case you want to add speed control

The outputs EnR/L and Dirr/l are connected to the right and Left motor drivers, respectively.
LEDs can also be used to analyze the control tasks on motors.

## External hardware

BFD1000 5-channel line follower sensor, two motor drivers with LED display
