<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

**RAM**: only 8x32 bit data available, but this RAM designed 8x40 for ECC implement  
  
**MBIST (Memory Built-In Self-Test)**: using March algorithm. In this project, I decided using March C-:  
1. ↑ (w0)  
2. ↑ (r0,w1)  
3. ↑ (r1,w0)  
4. ↓ (r0,w1)  
5. ↓ (r1,w0)  
6. ↓ (r0)  
  
**Hamming ECC (Hamming Error Correcting Code)** SECDED:  
We add r parity bits such that: 2^r = m+r+1   
	where:   
	m = number of data bits  
	r = number of parity bits  
Parity bits are placed at power-of-two positions  
Each parity bit monitors a specific subset of bits:
- P1 checks all bits with LSB = 1: 1,3,5,7,…
- P2 checks bits with second LSB = 1: 2,3,6,7,…
- P4 checks bits with third LSB = 1: 4,5,6,7,12,13,…
- … and so on  
When reading data, parity bits are recalculated and compared with the stored parity bits.  
  
  
**Run and expected results**:  
1. Input ui[0] MBIST Enable:  
- MBIST Enable == 0: Normal Mode
- MBIST Enable == 1: Start RAM test
  
2. Output uo[0] MBIST Activated: 
- MBIST Activated == 0: MBIST mode is not enbled
- MBIST Activated == 1: MBIST mode is enbled
  
3. Output uo[1] MBIST Fail:
- Can only be toggled when MBIST Activated == 1
- Inversion of uo[2] indicates MBIST Pass
- MBIST Fail == 0: MBIST mode has not failed
- MBIST Fail == 1: MBIST mode has failed
  
3. Output uo[2] MBIST Pass:
- Can only be toggled when MBIST Activated == 1
- Inversion of uo[1] indicates MBIST Fail
- MBIST Fail == 0: MBIST mode has not passed
- MBIST Fail == 1: MBIST mode has passed
- Side note: After ui[0] MBIST Enable == 1, only one uo[1] MBIST Fail or uo[2] MBIST Pass can be toggled
  
4. Output uo[3] RAM Enable:
- Check if RAM is enable or not
- RAM Enable == 0: RAM is not enable
- RAM Enable == 1: RAM is enable
  
5. Output uo[4] ECC Bypass Status:
- Can only be toggled when MBIST Activated == 1
- ECC Bypass Status == 0: ECC is not bypassed
- ECC Bypass Status == 1: ECC is now bypassed
  
6. Output uo[5] ECC Single Bit Error Detected:
- ECC Single Bit Error Dtected == 0: No error found
- ECC Single Bit Error Detected == 1: 1 Error Detected, fix status will be shown in uo[7]
  
7. Output uo[6] ECC Double Bit Error Detected:
- ECC Double Bit Error Dtected == 0: No error found
- ECC Double Bit Error Detected == 1: 2 Error Detected, cannot be fix
  
8. Output uo[7] ECC Single Bit Error Fix:
- ECC Single Bit Error Fix == 0: No error found
- ECC Single Bit Error Fix == 1: 1 Error Detected, fixed
  
  
## How to test

ECC and MBIST test are the same, they have 2 parts:  
- Functional Check: Check if normal function of DUT is working
- Fault injection: simulation error to watch behaviors of DUT  
  
All test have checker

## External hardware

All built-in, we are all in-house, no need to outsource, because we are strong enough
