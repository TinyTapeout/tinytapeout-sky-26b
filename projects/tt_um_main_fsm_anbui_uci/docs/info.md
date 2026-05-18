<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a finite state machine (FSM) for a simplified swarm microrobot drug delivery system. The design detects blood clots, communicates clot information to nearby robots, and controls drug release and motor movement behavior.

The system uses two external inputs:

clot_detected (ui_in[0]) — local blood clot detection sensor
clot_nearby (ui_in[1]) — RX communication signal indicating another nearby robot detected a clot

The FSM has four states:

RANDOM_WALK
Default idle state where the robot moves normally.
RELEASE_DRUG
Triggered when a clot is locally detected and the robot still contains drug.
The robot:
releases the drug
transmits a clot detected TX signal
permanently clears its internal drug memory
CLOT_NO_DRUG
Triggered when a clot is detected after the drug has already been used.
The robot:
transmits clot detected TX
transmits no-drug TX
does not release drug
WALK_AWAY
Triggered after clot detection or when a nearby clot RX signal is received.
All four motor outputs are enabled to move the robot away from the clot region.

The design internally stores whether the robot still contains drug using a register initialized during reset.

## How to test

1. Apply reset (rst_n = 0, then rst_n = 1). The FSM initializes to RANDOM_WALK with the drug loaded. All uo_out bits are 0.

2. Hold idle (ui_in = 0) for one clock cycle. The FSM remains in RANDOM_WALK. All uo_out bits stay 0. This confirms no spurious transitions occur.

3. Set ui_in\[0\] = 1 to simulate a local clot detection while the drug is still available. The FSM transitions to RELEASE_DRUG. uo_out\[0\] goes HIGH (drug release command). uo_out\[1\] goes HIGH (clot detected TX). uo_out[2] remains LOW because the drug is still present during this cycle. Motors remain off.

4. Next clock cycle (clear ui_in). The FSM transitions to WALK_AWAY and contains_drug clears to 0. uo_out\[0\] and uo_out\[1\] go LOW. uo_out\[2\] goes HIGH (no drug TX). uo_out\[3\] through uo_out\[6\] go HIGH (all four motors on).

5. Next clock cycle. The FSM returns to RANDOM_WALK. Motors turn off. uo_out\[2\] remains HIGH because the drug is permanently gone.

6. Set ui_in\[0\] = 1 again to detect a clot without any drug. The FSM enters CLOT_NO_DRUG. uo_out\[0\] stays LOW (no drug to release). uo_out\[1\] goes HIGH (clot detected TX). uo_out\[2\] remains HIGH (no drug).

7. Next clock cycle (clear ui_in). The FSM transitions to WALK_AWAY. uo_out\[3\] through uo_out\[6\] go HIGH. uo_out\[2\] stays HIGH.

8. Next clock cycle. The FSM returns to RANDOM_WALK again.

9. Apply reset again (rst_n = 0, then 1) to reload the drug. Now set ui_in\[1\] = 1 to test the clot_nearby path. The FSM enters WALK_AWAY directly. uo_out\[3\] through uo_out\[6\] go HIGH. uo_out\[2\] stays LOW because the drug is still loaded. No release command, no clot TX.

10. Next clock cycle (clear ui_in). The FSM returns to RANDOM_WALK. All outputs return to 0.


## Test Procedure

| Step | Action | ui_in[1:0] | State | uo_out[6:0] | Description |
|------|--------|-----------|-------|-------------|-------------|
| 1 | Reset | 00 | RANDOM_WALK | 0000000 | Robot initializes with drug loaded |
| 2 | Idle | 00 | RANDOM_WALK | 0000000 | No inputs, robot stays wandering |
| 3 | Clot + drug | 01 | RELEASE_DRUG | 0000011 | Drug release command and clot TX go HIGH |
| 4 | Auto | 00 | WALK_AWAY | 1111100 | Motors on, drug permanently cleared |
| 5 | Auto | 00 | RANDOM_WALK | 0000100 | Back to wander, no-drug flag stays HIGH |
| 6 | Clot, no drug | 01 | CLOT_NO_DRUG | 0000110 | Clot TX HIGH, no release command |
| 7 | Auto | 00 | WALK_AWAY | 1111100 | Motors on |
| 8 | Auto | 00 | RANDOM_WALK | 0000100 | Return to wander |
| 9 | Reset + nearby | 10 | WALK_AWAY | 1111000 | Drug reloaded, dodge on neighbor signal |
| 10 | Auto | 00 | RANDOM_WALK | 0000000 | All outputs LOW, drug still loaded |

> Note: uo_out[7] is hardwired LOW and omitted from the table.

## External hardware

No external hardware used in project
