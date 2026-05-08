## TTSKY26A-BCD-TO-7SEGMENT

### How it works

This design translates one 4-bit input into a 7-segment HEX glyph pattern.

### Visual explanation

![Block diagram](extra-img/blockdiagram.png)

The additional display reference photos are available in docs/extra-img.

Functional pipeline:

1. HEX decode:
- Inputs 0..15 map to 0,1,2,3,4,5,6,7,8,9,A,b,C,d,e,F.

2. Display control:
- display_enable gates the output path.
- blank forces all segments off.
- lamp_test forces all segments on.

3. Output-mode adaptation:
- active-high output mode (common-cathode)
- active-low output mode (common-anode)

4. Status reporting:
- valid digit flag
- invalid digit flag
- display_on flag
- active_low_mode echo

### Pin usage summary

- ui[3:0]: HEX nibble
- ui[4]: display_enable
- ui[5]: blank
- ui[6]: lamp_test
- ui[7]: decimal point input

- uo[6:0]: segments {a,b,c,d,e,f,g}
- uo[7]: decimal point output

- uio[0]: active_low_mode
- uio_out[7:4]: status flags

### How to test

#### Cocotb regression

```powershell
cd test
make
```

#### Standalone Verilog check

```powershell
cd test
iverilog -o sim_bcd_verify.vvp -I ../src \
  ../src/project.v \
  ../src/bcd_to_7seg_decoder.v \
  ../src/seg_display_control.v \
  ../src/seg_output_mode.v \
  tb_verify.v

vvp sim_bcd_verify.vvp
```

### References

1. LD3631ABU Datasheet (0.36" LED Digital Tube): https://imrnrwxhplpp5p.leadongcdn.com/LD3631ABU-aidlkBqmKonSRniilqorniq.pdf
2. Shopee target module page: https://shopee.co.id/product/2178321/13198892939
3. GeeksforGeeks, BCD to 7 Segment Decoder: https://www.geeksforgeeks.org/digital-logic/bcd-to-7-segment-decoder/
4. Electronics Tutorials, BCD to 7 Segment Decoder: https://www.electronics-tutorials.ws/combination/comb_6.html
