<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

TinyFarm is a small hardware-based farming game implemented in SystemVerilog. The design maintains internal state for four farm fields, each of which can be 1. empty, 2. growing a crop, or 3. ready to harvest. When a crop is planted, a growth timer begins and decreases on each game tick. Once the timer reaches zero, the crop becomes ready to harvest.

The system also includes an inventory and a customer order generator. The player must grow and harvest crops to fulfill orders before their timers expire. A background game clock controls crop growth and order countdown independently of user actions.

The design outputs a VGA signal (RGB222 format) that visually displays the farm grid, crop states, and game status. User inputs control field selection, crop selection, and actions such as planting, watering, harvesting, and fulfilling orders.

## How to test

Use the input pins to control the game:

Mode select (ui[1:0])
- 00 = View
- 01 = Plant
- 10 = Water
- 11 = Harvest
Field select (ui[3:2])
- Selects one of the four farm fields
Crop select (ui[5:4])
- 00 = Wheat
- 01 = Corn
- 10 = Carrot
- 11 = Tomato
ui[6] = Action button
- Performs the selected action (plant, water, or harvest)
ui[7] = Fulfill button
- Attempts to fulfill the current order using inventory

Gameplay flow:
1. Select a field and enter Plant mode
2. Choose a crop and press Action to plant it
3. Wait for the crop to grow (or use Water mode to speed it up)
4. When ready, use Harvest mode and press Action
5. Press Fulfill to complete an order when you have enough crops

## External hardware

This project uses a Tiny VGA PMOD (RGB222 interface) to display the game output. The VGA signals are mapped to the output pins and can be connected directly to the Tiny VGA PMOD for visualization on a monitor.