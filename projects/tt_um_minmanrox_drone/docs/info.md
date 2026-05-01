<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a simple quadcopter drone flight controller that converts four control inputs (throttle, yaw, pitch, and roll) into power commands for four motors.

The controller mixes the inputs so that each motor receives a different drive level depending on the requested motion. Throttle raises or lowers all motors together, while yaw, pitch, and roll introduce differential adjustments to achieve the desired control.

Both the input and output use a PWM signal with a 20 ms period. A 1 ms duty period represents the minimum value and a 2 ms duty period represents the maximum value.

## How to test

Apply PWM control signals for throttle, yaw, pitch, and roll at the expected 20 ms frame rate and observe the four motor PWM outputs. Verify that increasing throttle raises all outputs together, and that yaw, pitch, and roll shift power between motors in the expected direction.

The intended final setup uses a radio receiver to receive control inputs from the controller as PWM signals and feeds outputs to ESCs for each motor. 

## External hardware

The full system implementation requires a receiver (or other control source) to feed the input control signals, ESCs to receive the output signals, and motors. Many modern transmitters/receivers use protocols other than PWM. I used an ELRS/CRSF RadioMaster transmitter/receiver and a CRSF to PWM converter.

My parts list:
- [RadioMaster 2.4GHz RP1 ELRS FPV Receiver](https://a.co/d/08Twm46a)
- [MATEKSYS CRSF to PWM Converter](https://a.co/d/050DNA6P)
- [ESC Brushless Electronic Speed Controller BLHeli_S](https://a.co/d/0iq4EvQL)
- [Readytosky RS2205 2300KV Brushless Motors](https://a.co/d/0a6xWqX8)
- [3S1P XT60 LiPo Battery](https://a.co/d/00Ppfwxj)
- [7inch 3-blade props](https://a.co/d/042gyd2x)
- [7inch Drone Frame](https://a.co/d/02RikBCN)
- [Power Distribution Board](https://a.co/d/0cuCnq9I)
- [Transmitter](https://a.co/d/0jgcRSK5)
