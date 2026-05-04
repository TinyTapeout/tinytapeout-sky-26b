<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

**basic_national_anthem_buzzer** is a digital melody player that outputs the Turkish National Anthem (İstiklâl Marşı) as a square-wave audio signal. A piezo buzzer connected to `uo_out[0]` will play the melody.

### Architecture

The design consists of five main blocks:

1. **Prescaler (9-bit):** Divides the 50 MHz input clock by 512, producing a ~97.6 kHz internal tick used by all other blocks.

2. **Tone Generator (8-bit variable divider):** Divides the prescaler tick by a note-specific value to produce a square wave at the correct musical pitch. For example, the note A4 (440 Hz) uses a divider of 111: `97656 / (2 × 111) ≈ 440 Hz`.

3. **Tempo Counter (14-bit):** Further divides the prescaler tick to produce a ~6 Hz tempo tick (~168 ms period), which controls how long each note is held.

4. **Note Sequencer:** A 6-bit address counter steps through the melody ROM. Each note has a programmable duration measured in tempo ticks. When the duration expires, the sequencer advances to the next note.

5. **Melody ROM (combinational logic):** Stores 90 note entries encoding the first two stanzas of İstiklâl Marşı in E minor (based on Osman Zeki Üngör's arrangement at 120 BPM). Each entry contains a 4-bit note code and a 4-bit duration value.

### Supported Notes

B3, C4, D4, D♯4, E4, F4, F♯4, G4, G♯4, A4, A♯4, B4, C5, D5, E5, and REST.

## How to test

1. Connect a piezo buzzer (or small speaker) between `uo_out[0]` and GND through a 100 Ω resistor.
2. Optionally connect an LED with a 330 Ω resistor to `uo_out[1]` to see the "playing" indicator.
3. Apply power and release reset — the melody starts playing automatically.
4. Toggle `ui_in[0]` (rising edge) to restart the melody from the beginning.
5. Set `ui_in[1]` HIGH to enable loop mode (melody repeats continuously).
6. The current note address is visible on `uo_out[7:2]` for debugging.

## External hardware

- 1× Piezo buzzer or small 8 Ω speaker
- 1× 100 Ω resistor (in series with buzzer on `uo_out[0]`)
- 1× LED + 330 Ω resistor (optional, for playing indicator on `uo_out[1]`)
- 1× Push button (optional, for restart on `ui_in[0]`)
- 1× DIP switch or jumper (optional, for loop mode on `ui_in[1]`)
