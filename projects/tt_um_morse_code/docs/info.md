<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Morse code is input using a push button. A hold for one second is a "dit" 
(a dot .) and a hold for three seconds is a "dah" (a dash -). A release for 
one second distinguishes the end of a dit or dah, a release for three seconds 
is the end of a letter, and a release for seven seconds is the end of a word. 
This matches with standard Morse code conventions. The button press is 
translated into the characters A-Z and output as seven-segment encodings to be 
displayed on two seven segment displays through the Digilent Pmod SSD. An 
external LED blinks at a 1 second rate to help users keep time.

The modules in src/translation.sv process signals indicating the end of a dit/dah, 
letter, or word. They also take in a signal identifying whether the most recent 
input was a dit or a dah. The output is the most recent two characters encoded 
for display on a seven-segment display, saved in a shift register. 

The module in src/counting.sv receives the synchronized external button input and 
uses counters to detect timing events. It generates pulses for the end of a 
dit/dah, end of letter, and end of word. It also determines whether the 
input duration corresponds to a dit or a dah.

src/ChipInterface.sv instantiates the other modules, drives the blinking LED,
and controls the interfacing with the external inputs/outputs.

## How to test

To test the RTL modules, run test/tb_counting.sv and test/tb_translation.sv.

To test the implementation, set up the external hardware connections with 
the pinout defined in info.yaml. Use an external button to input the Morse code. 
The external LED will help the user to keep time by flashing every one second.
Input test characters according to the timing rules described in the 
"How it works" section. Verify that the decoded letters appear on the external 
seven segment displays.

## External hardware

- Tactile switch/push button
- LED
- Digilent Pmod SSD
