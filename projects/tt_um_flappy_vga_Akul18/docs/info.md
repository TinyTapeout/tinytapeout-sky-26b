## How it works

This project implements a simplified Flappy Bird-style game entirely in digital logic. The system generates VGA timing signals (including horizontal sync, vertical sync, and pixel coordinates) and uses these to continuously scan out a video frame to a display. A small physics module updates the bird’s vertical position over time, applying gravity and responding to user input to create the familiar “flapping” motion. A pipe generator produces an obstacle that moves horizontally across the screen, with a randomly positioned gap.

Collision detection logic determines when the bird intersects with the pipe or the ground, which ends the game. A renderer module uses the current pixel coordinates to decide what color to output at each point in the frame, drawing the bird, pipe, ground, and background in real time. The final output is sent as 2-bit RGB signals along with HSYNC and VSYNC, allowing the design to drive a VGA display directly.

## How to test

To test the design on hardware, connect the VGA output pins to a TinyVGA-style PMOD or an equivalent resistor-based VGA DAC circuit, and then connect a VGA cable from that circuit to a monitor. Make sure the chip is properly powered and clocked.

The design uses two input signals: ui[0] acts as the START button, and ui[1] acts as the JUMP button. After reset, press START to begin the game. Once the game is running, press JUMP to make the bird move upward; otherwise, gravity will pull it downward. The goal is to keep the bird within the gap in the moving pipe. If the bird collides with the pipe or the ground, the game ends and can be restarted.

## External hardware

This project requires a VGA output interface to display the game. It is designed to work with a TinyVGA-style PMOD or any equivalent resistor-DAC VGA circuit that converts digital signals into analog VGA levels. The design outputs 2 bits each for red, green, and blue color channels, along with horizontal sync (HSYNC) and vertical sync (VSYNC) signals.

A standard VGA monitor and cable are required to view the output. Push buttons should be connected to the input pins (ui[0] and ui[1]) to control the game's inputs (start and jump).