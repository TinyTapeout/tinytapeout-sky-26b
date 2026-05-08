# Detector de Patrones Aleatorios UART-LFSR

## How it works

Este proyecto implementa un sistema digital tipo ASIC para Tiny Tapeout que recibe un dato serial mediante UART, lo almacena en un registro de 8 bits, genera un patrón pseudoaleatorio mediante un LFSR y compara ambos valores con un detector de patrones. Si el dato recibido por UART coincide con el patrón generado por el LFSR, el sistema activa una señal de coincidencia en los LEDs de salida.

El flujo general del sistema es:

```text
RX UART -> UART -> Registro de 8 bits -> Detector de patrones -> LEDs
                          ^
                          |
                  LFSR -> Registro LFSR
```

La arquitectura trabaja en cuatro etapas principales:

1. **Recepción UART**: el byte entra en formato serial por el pin `ui[0]`.
2. **Almacenamiento**: cuando el UART indica que el dato recibido es válido, el byte se guarda en un registro paralelo de 8 bits.
3. **Generación de patrón**: el LFSR genera una secuencia pseudoaleatoria de 8 bits sincronizada con el reloj del diseño.
4. **Comparación y salida**: el detector compara el byte recibido contra el patrón del LFSR. Si hay coincidencia, activa `uo[0]`.

### Main modules

| Archivo | Función dentro del sistema |
|---|---|
| `project.v` | Módulo superior compatible con Tiny Tapeout (`tt_um_example`). Conecta los pines físicos del template con el sistema interno. |
| `top_uart_lfsr_detector.v` | Top interno del sistema. Integra UART, registro, LFSR y detector de patrones. |
| `UART_gen_netlist.v` | Implementación del UART usado para recibir datos seriales y, opcionalmente, generar salida TX. |
| `reg_pp_8b_en_ar.v` | Registro paralelo de 8 bits con enable y reset asíncrono activo en bajo. |
| `top_lfsr.v` | Generador LFSR y registro de salida del patrón pseudoaleatorio. |
| `Top_Detector_de_patrones.v` | Bloque que conecta comparadores y FSM para decidir si existe coincidencia. |
| `Comparador.v` | Compara dos buses de datos y genera señales de igualdad. |
| `FSM.v` | Máquina de estados que controla el proceso de espera, comparación, coincidencia y no coincidencia. |

### Internal behavior

Después de reset, el sistema queda en un estado conocido. El UART espera una trama válida por `rx`. Cuando llega un byte completo, `rx_data_rdy` habilita el registro UART y se almacena el dato recibido. En paralelo, el LFSR genera un patrón de 8 bits. Con la señal `pulso`, el sistema avanza la verificación y el detector compara el byte almacenado contra el patrón del LFSR.

El detector separa la comparación en dos mitades de 4 bits y luego la FSM decide si el patrón completo coincide. La salida `leds[0]` funciona como indicador principal de coincidencia.

```text
leds = 0001 -> coincidencia detectada
leds = 0000 -> no hay coincidencia
```

## How to test

### Automated test

El proyecto puede probarse con el flujo normal de Tiny Tapeout usando cocotb e iverilog. El testbench debe generar una trama UART completa y verificar que el byte recibido se almacene correctamente en el registro interno.

Desde el repositorio:

```bash
cd test
make clean
make
```

El flujo de GitHub Actions debe ejecutar al menos estos tres checks principales:

```text
test -> simulación RTL con cocotb/iverilog
docs -> generación de documentación
gds  -> síntesis física, precheck y generación del layout
```

### Manual test idea

1. Aplicar reset activo en bajo desde el template (`rst_n = 0`) y luego liberarlo (`rst_n = 1`).
2. Mantener un reloj estable en `clk`.
3. Enviar por `ui[0]` una trama UART con formato estándar: start bit, 8 bits de datos y stop bit.
4. Aplicar un pulso de control en `ui[1]` para avanzar la generación/verificación.
5. Observar las salidas:
   - `uo[0] = 1` indica coincidencia entre el dato UART y el patrón LFSR.
   - `uo[0] = 0` indica que no hubo coincidencia.
   - `uo[4]` corresponde a la línea `tx` del UART.

## External hardware

No se requiere hardware externo obligatorio para la lógica principal. Para una prueba física más completa se puede utilizar:

- Un generador de reloj compatible con la frecuencia del diseño.
- Una fuente de tramas UART para el pin `rx`.
- LEDs o analizador lógico para observar `uo[0]` a `uo[4]`.
- La placa de prueba de Tiny Tapeout o un entorno equivalente de simulación.

## Pinout

| Tiny Tapeout pin | Nombre | Dirección | Descripción |
|---|---|---|---|
| `ui[0]` | `rx` | Entrada | Entrada serial UART. |
| `ui[1]` | `pulso` | Entrada | Pulso de control para avanzar/verificar el patrón. |
| `ui[2]` | - | Entrada | No utilizado. |
| `ui[3]` | - | Entrada | No utilizado. |
| `ui[4]` | - | Entrada | No utilizado. |
| `ui[5]` | - | Entrada | No utilizado. |
| `ui[6]` | - | Entrada | No utilizado. |
| `ui[7]` | - | Entrada | No utilizado. |
| `uo[0]` | `led_match` | Salida | Indicador de coincidencia. |
| `uo[1]` | `led1` | Salida | LED auxiliar, normalmente en 0. |
| `uo[2]` | `led2` | Salida | LED auxiliar, normalmente en 0. |
| `uo[3]` | `led3` | Salida | LED auxiliar, normalmente en 0. |
| `uo[4]` | `tx` | Salida | Salida serial UART. |
| `uo[5]` | - | Salida | No utilizado. |
| `uo[6]` | - | Salida | No utilizado. |
| `uo[7]` | - | Salida | No utilizado. |
| `uio[0]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[1]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[2]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[3]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[4]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[5]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[6]` | - | Bidireccional | No utilizado. Configurado como entrada. |
| `uio[7]` | - | Bidireccional | No utilizado. Configurado como entrada. |

## Implementation results

El diseño fue verificado con el flujo RTL-to-GDSII. Los resultados principales reportados para la versión final son:

| Parámetro | Valor |
|---|---:|
| Módulos Verilog | 8 |
| Líneas de código Verilog | 1,056 |
| Celdas lógicas activas | 450 |
| Celdas fill + tap | 3,324 |
| Total de celdas | 3,774 |
| Área | 1 tile |
| Dimensión del tile | 167 µm x 108 µm |
| Proceso | Sky130A, 130 nm |
| Precheck | 15/15 aprobado |
| Simulación RTL | Exitosa con cocotb + iverilog |

## Repository notes

Para que el repositorio compile correctamente, los archivos Verilog deben estar dentro de `src/` y deben aparecer tanto en `info.yaml` como en `test/Makefile`.

### `info.yaml`

```yaml
source_files:
  - "project.v"
  - "top_uart_lfsr_detector.v"
  - "UART_gen_netlist.v"
  - "reg_pp_8b_en_ar.v"
  - "top_lfsr.v"
  - "Top_Detector_de_patrones.v"
  - "Comparador.v"
  - "FSM.v"
```

### `test/Makefile`

```makefile
PROJECT_SOURCES = project.v top_uart_lfsr_detector.v UART_gen_netlist.v reg_pp_8b_en_ar.v top_lfsr.v Top_Detector_de_patrones.v Comparador.v FSM.v
```

## Final status

El sistema queda documentado como un detector de patrones UART-LFSR listo para el flujo de Tiny Tapeout. La implementación final pasa simulación RTL, documentación y generación GDS cuando todos los archivos están correctamente listados en la estructura del repositorio.
