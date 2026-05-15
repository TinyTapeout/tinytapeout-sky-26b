<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# ALU de 7 bits

## Descripción del proyecto

Este proyecto implementa una ALU de 7 bits con entrada serial y salida paralela. La ALU recibe dos operandos de 7 bits de forma secuencial, realiza la operación seleccionada por las señales de operación y presenta el resultado en paralelo junto con una señal `DONE` que indica que el cálculo terminó.

El diseño fue desarrollado para Tiny Tapeout y está compuesto por los archivos:

- `tt_um_alu_7bits.v`
- `alu_7bits.v`
- `controlpath.v`
- `datapath.v`
- `sipo7.v`
- `alu_core.v`

---

## Cómo funciona

El sistema trabaja de la siguiente manera:

1. **Reinicio**
   - Cuando `/RST = 0`, el circuito vuelve a su estado inicial.
   - Se borran los registros internos y el sistema queda listo para recibir nuevos datos.

2. **Carga serial de operandos**
   - Con `/RST = 1`, el sistema puede comenzar a recibir información.
   - Los bits ingresan por `BIT_IN`.
   - Se cargan **14 bits consecutivos**:
     - Los primeros 7 bits corresponden al operando A (LSB → MSB).
     - Los siguientes 7 bits corresponden al operando B (LSB → MSB).
   - Cada bit se ingresa con un pulso de reloj en `CLK`.

3. **Selección de operación**
   - La ALU calcula continuamente el resultado en función de `BIT_IN` y `OP`.
   - La señal `OP` define la operación:

     | OP   | Operación            |
     |------|----------------------|
     | 000  | Suma (A + B)         |
     | 001  | AND                  |
     | 010  | OR                   |
     | 011  | XOR                  |
     | 100  | Resta (A - B)        |
     | 101  | Incremento (A + 1)   |
     | 110  | Decremento (A - 1)   |

4. **Salida del resultado**
   - Después de cargar los 14 bits, el sistema pasa al estado de ejecución.
   - En este estado, el resultado de la ALU se almacena en `DATA_OUT`.
   - La señal `DONE` se activa indicando que la operación ha finalizado.
   - `DONE` permanece en alto hasta que se realice un nuevo reset.

---

## Cómo probar

Para probar el circuito, siga este procedimiento:

1. Coloque `/RST = 1` para habilitar la entrada de datos.
2. Ingrese los 14 bits en `BIT_IN[0]`:
   - Primero los 7 bits del operando A (LSB primero).
   - Luego los 7 bits del operando B (LSB primero).
3. Aplique un pulso de reloj (`CLK`) por cada bit ingresado.
4. Configure `OP[3:1]` con la operación deseada (puede fijarse antes o durante la carga de datos).
5. Observe:
   - `DATA_OUT[6:0]` con el resultado final.
   - `DONE[7]` en alto cuando el cálculo haya finalizado.

### Ejemplo

Si se desean sumar:

- Operando 1 = `7'd25`
- Operando 2 = `7'd12`
- Operación = `000`

Entonces, al finalizar la carga, la salida debe mostrar:

- `DATA_OUT = 7'd37`
- `DONE = 1`

---

## Hardware externo

No se requiere hardware externo adicional para su funcionamiento básico.

En una prueba práctica pueden utilizarse:

- Interruptor o botón para `/RST`
- Interruptores o señales digitales para `BIT_IN` y `OP`
- LEDs o un visor lógico para monitorear `DATA_OUT` y `DONE`
