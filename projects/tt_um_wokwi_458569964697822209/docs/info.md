# How it works
how_it_works: |
  This 1-bit full adder circuit implements binary addition using basic logic gates. It takes three inputs:
  - A: First binary digit (0 or 1)
  - B: Second binary digit (0 or 1)  
  - Cin: Carry-in from previous addition stage
  
  The circuit produces two outputs:
  - Sum: Result of A + B + Cin (0 or 1)
  - Cout: Carry-out to next stage (0 or 1)
  
  The logic implementation uses:
  - XOR gates: Calculate the sum (A ⊕ B ⊕ Cin)
  - AND gates: Detect when two inputs are both 1
  - OR gate: Combine carry conditions
  
  Boolean equations:
  Sum = A ⊕ B ⊕ Cin
  Cout = (A·B) + (Cin·(A⊕B))
  
  This 1-bit building block can be cascaded to create multi-bit adders for arithmetic operations in processors, calculators, and digital systems.

# How to test
how_to_test: |
  To test the 1-bit full adder circuit:
  
  1. Apply input combinations to A, B, and Cin using push buttons or switches
  2. Observe the Sum and Cout outputs on LEDs or a logic analyzer
  3. Verify truth table:
  
  | A | B | Cin | Sum | Cout |
  |---|---|---|-----|------|
  | 0 | 0 | 0   | 0   | 0    |
  | 0 | 0 | 1   | 1   | 0    |
  | 0 | 1 | 0   | 1   | 0    |
  | 0 | 1 | 1   | 0   | 1    |
  | 1 | 0 | 0   | 1   | 0    |
  | 1 | 0 | 1   | 0   | 1    |
  | 1 | 1 | 0   | 0   | 1    |
  | 1 | 1 | 1   | 1   | 1    |
  
  4. Test cascaded operation by connecting Cout to Cin of another 1-bit full adder to form a 2-bit adder
  5. Use a clock signal to test dynamic behavior if applicable

# External hardware
external_hardware:
  - "3x Push buttons or DIP switches for inputs (A, B, Cin)"
  - "2x LEDs with current-limiting resistors (220-330Ω) for outputs (Sum, Cout)"
  - "Breadboard and jumper wires for prototyping"
  - "5V power supply or USB power source"
  - "Optional: Additional full adder ICs for multi-bit testing (74HC283 for 4-bit adder)"

# Language and framework
language:
  - "Verilog"
  - "Wokwi schematic"

# Tags for discovery
tags:
  - "full adder"
  - "1-bit adder"
  - "arithmetic"
  - "logic gates"
  - "binary addition"
  - "digital circuit"
  - "carry chain"
  - "ALU building block"
  - "Tiny Tapeout"
  - "combinational logic"
  - "XOR"
  - "AND"
  - "OR"

# Clock information
clock:
  frequency: "none (combinational logic)"

# Pin mapping (customize based on your actual pin assignments)
pin_mapping:
  - "Input A: Pin 1"
  - "Input B: Pin 2" 
  - "Input Cin: Pin 3"
  - "Output Sum: Pin 4"
  - "Output Cout: Pin 5"

# Power requirements
power:
  voltage: "3.3V - 5V"
  current: "< 10mA"

# Applications
applications:
  - "Multi-bit adder circuits (cascade multiple 1-bit adders)"
  - "Arithmetic Logic Units (ALUs)"
  - "Digital counters"
  - "Microprocessor design"
  - "Educational tool for binary arithmetic"
  - 
