<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

  This design is a 4-bit digital passcode lock built from basic logic gates. The lock checks the four input bits A B C
  D, and it unlocks only when the pattern is 1010, which is implemented as A AND NOT(B) AND C AND NOT(D).

  It also checks for a special alarm condition 1111. If the input is 1111, the yellow LED and buzzer turn on. Any other
  input that is neither the correct code nor the alarm code turns on the red WRONG indicator.

## How to test

  Use the DIP switches sw1-1 to sw1-4 as the passcode inputs. Set them to 1 0 1 0 and the green UNLOCK LED should turn
  on immediately.

  To test the alarm, set the first four switches to 1 1 1 1. To test the wrong condition, try any other 4-bit pattern
  such as 0000 or 1001, and the red WRONG LED should turn on.

## External hardware

  The circuit uses a DIP switch as the user input interface and three LEDs to show UNLOCK, WRONG, and ALARM. A buzzer is
  connected in parallel with the alarm output so the alarm gives both visual and sound feedback.

  The Tiny Tapeout style input/output blocks are used to map the external signals into the logic circuit. Clock and
  reset support are present in the input harness, but this particular lock is combinational, so the passcode result
  updates directly from the switch positions.
