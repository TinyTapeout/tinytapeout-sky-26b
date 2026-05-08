<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This circuit is a combinational logic controller designed to process an 8-bit input from a DIP switch. The inputs (IN0–IN7) pass through a network of AND and NOT (inverter) logic gates, which perform specific logical operations based on the switch configuration.

The resulting logic state is then passed to an output block. The output stage includes a pair of NOR gates configured to drive visual and audible indicators: a red LED and a buzzer (connected to OUT0/OUT1) and a green LED (connected to OUT1). When the logical conditions met by the gate array are satisfied, the output triggers these components to provide user feedback.
## How to test

To verify the functionality of the circuit, follow these steps:

Initialize Simulation: Click the green Play button to begin the simulation.

Configure Inputs: Adjust the 8-position DIP switch to set your desired input binary values.

Clocking: Tap the Step button to advance the clock cycle. This pushes the current state of the DIP switches through the logic gate array.

Observe Outputs: Monitor the Red LED, Green LED, and the Buzzer.

The LEDs and buzzer will activate based on the specific combination of inputs set on the DIP switch.

If you need to restart or clear the state, press the RESET button to return the system to its initial configuration.
## External hardware

The following components are utilized in this circuit:

8-Position DIP Switch: Used to provide the 8-bit digital input data.

Tactile Push Buttons: Used for the "Step" (clock) function and the "Reset" function.

LEDs: One red LED and one green LED for visual state indication.

Buzzer: An audible indicator to signal when the logic condition is met.

Clock/Pulse Generator: Provides the necessary timing signal for the input block.

Resistors: Included for pull-up/pull-down configuration to ensure stable input states.
