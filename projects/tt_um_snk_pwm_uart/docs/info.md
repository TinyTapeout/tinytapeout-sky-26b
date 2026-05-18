## How it works

This design implements a UART-controlled PWM generator.

A UART receiver listens on `ui_in[0]` using a standard 8N1 protocol.
The system uses a simple two-byte command format:

- First byte selects the PWM channel (0–6)
- Second byte sets the duty cycle (0–255)

Internally, a small state machine processes these bytes and updates
the corresponding duty register.

A shared 8-bit counter continuously increments from 0 to 255.
Each PWM output compares this counter with its duty value:

- If `counter < duty`, output is HIGH
- Otherwise, output is LOW

This generates seven independent PWM signals simultaneously.

Whenever a byte is received, the UART transmitter sends back `0xAA`
as an acknowledgment.

---

## How to test

1. Connect a UART source to `ui_in[0]`
2. Set `ui_in[1] = 1` to enable the design
3. Apply reset using `rst_n`
4. Send two bytes:

   `[CHANNEL][DUTY]`

Examples:

- `0x00 0x00` → PWM0 OFF
- `0x01 0xFF` → PWM1 FULL ON
- `0x02 0x80` → PWM2 ~50% duty

Observe outputs on `uo_out[6:0]`.

**Expected output:** PWM signals with duty cycles matching the received values.

---

## External hardware

- USB-to-UART adapter or microcontroller (for sending commands)
- Oscilloscope or logic analyzer (to observe PWM outputs)

No additional hardware is required.
