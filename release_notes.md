
![Microchip logo](https://raw.githubusercontent.com/wiki/Microchip-MPLAB-Harmony/Microchip-MPLAB-Harmony.github.io/images/microchip_logo.png)
![Harmony logo small](https://raw.githubusercontent.com/wiki/Microchip-MPLAB-Harmony/Microchip-MPLAB-Harmony.github.io/images/microchip_mplab_harmony_logo_small.png)

# Microchip MPLAB® Harmony 3 Release Notes

## Event Recorder v1.1.0

### New Features

- Lightweight instrumentation of application code of events to be captured
- Captured events are stored in a circular buffer on device memory and read by the debugger.
- Works with ARM® Cortex-M devices.
- Events can be displayed in various plots.
- Events can be saved and loaded for later analysis.

### Known Issues

The current known issues are as follows:

* If the rate of captured events is higher than the rate of debugger reading from the memory buffer, some events may be lost.  To avoid dropping events increase the memory buffer size, or reduce the number of events in the code.

### Development Tools

The Event Recorder require the following software:
- [MPLAB®X IDE v6.20 or above](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide#tabs)
- [MPLAB® Code Configurator plugin v5.5.0 or above](https://www.microchip.com/en-us/tools-resources/configure/mplab-code-configurator)
- [MPLAB® XC32 Compiler v4.35 or above](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers)

### Dependent Components

* [core v3.12.0](https://github.com/Microchip-MPLAB-Harmony/core/releases/tag/v3.12.0)
* [csp v3.16.0](https://github.com/Microchip-MPLAB-Harmony/csp/releases/tag/v3.16.0)
* [CMSIS View v1.1.0](https://github.com/ARM-software/CMSIS-View/tree/pack/1.1.0)

