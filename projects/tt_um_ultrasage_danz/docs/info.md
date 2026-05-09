<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
## About this project

This is a project based on the **IEEE Division 1 Open Silicon Tapeout Initiative**

## How it works

This is a project based on the **IEEE Division 1 Open Silicon Tapeout Initiative**

The Soil Moisture Irrigation Controller is a finite state machine (FSM) that automatically controls an irrigation pump based on soil moisture levels. It uses two comparators to detect moisture levels:

- **COMP0 and COMP1**: Inputs from comparators that compare soil moisture voltage against two reference thresholds (Vref_low and Vref_high)
- **Moisture levels**:
  - 00: Dry soil (V < Vref_low) → IRRIGATE state
  - 01: Mild soil (Vref_low < V < Vref_high) → IDLE state
  - 11: Wet soil (V > Vref_high) → SATURATED state
  - 10: Invalid comparator state → INVALID state (error condition)

The FSM has four states:
- **IDLE**: Pump off, waiting for dry conditions
- **IRRIGATE**: Pump on, watering the soil
- **SATURATED**: Pump off, soil is too wet
- **INVALID**: Error state, pump off, invalid_flag asserted

The system transitions between states based on moisture readings, ensuring efficient water usage and preventing over/under watering.

## How to test

1. **Setup**: Connect moisture sensor to comparators, comparators to COMP0/COMP1 inputs, pump to PUMP output
2. **Power on**: Apply clock (CLK) and reset (RST) to initialize to IDLE state
3. **Monitor moisture**:
   - Dry soil (COMP1=0, COMP0=0): Should enter IRRIGATE state (PUMP=1)
   - Mild soil (COMP1=0, COMP0=1): Should enter IDLE state (PUMP=0)
   - Wet soil (COMP1=1, COMP0=1): Should enter SATURATED state (PUMP=0)
   - Invalid (COMP1=1, COMP0=0): Should enter INVALID state (INVALID_FLAG=1, PUMP=0)
4. **Reset**: Assert RST to return to IDLE state

## External hardware

- **Moisture sensor**: Soil moisture sensor that outputs analog voltage proportional to soil wetness
- **Two comparators**: LM393 or similar, configured with Vref_low and Vref_high thresholds
- **Irrigation pump**: Relay-controlled water pump connected to PUMP output
- **Clock source**: External clock generator (1MHz recommended)
- **Power supply**: 3.3V or 5V depending on Tiny Tapeout board

## Pin Descriptions

### Inputs
- **CLK**: System clock input
- **RST**: Synchronous reset (active high)
- **COMP0**: Comparator 0 output (low threshold)
- **COMP1**: Comparator 1 output (high threshold)

### Outputs
- **PUMP**: Irrigation pump control (1 = on, 0 = off)
- **INVALID_FLAG**: Error indicator (1 = invalid moisture reading)

## Timing

- Clock frequency: 1MHz
- State transitions occur on rising clock edge
- Reset is synchronous
