
![Microchip logo](https://raw.githubusercontent.com/wiki/Microchip-MPLAB-Harmony/Microchip-MPLAB-Harmony.github.io/images/microchip_logo.png)
![Harmony logo small](https://raw.githubusercontent.com/wiki/Microchip-MPLAB-Harmony/Microchip-MPLAB-Harmony.github.io/images/microchip_mplab_harmony_logo_small.png)

# Microchip MPLAB® Harmony 3 Release Notes

## Overview
Event Recorder is a tool that helps developers capture and records events such as function calls, tasks, cpu usage and memory usage.
It provides various plots with detailed logs. By examining the recorded events, developers can understand the application behavior and identify erros.
Event Recorder has the following features :
  - Capture data streamed from SWD Cortex devices
  - Save data steamed in buffer
  - Load data buffered in Event Recorder plots
  - Visualize data in various plots
  - Save an image of plotted data in a file
## Software tools

The software tools required to use Event Recorder are :
- [MPLAB®X IDE v6.10](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide#tabs)
- [MPLAB® Code Configurator plugin](https://www.microchip.com/en-us/tools-resources/configure/mplab-code-configurator)
- [MPLAB® XC32 Compiler](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers)

## Documentation

The documentation for this project can be found in the docs' folder or in the MPLABX online documentation. 

## Special considerations

To ensure that Event Recorder functions correctly and produces the expected results, please follow these steps for proper configuration:

- Verify that Event Recorder Configuration files exist.
- Modify your scvd file as necessary.
- Open the plots needed before starting the debugger.

By adhering to these guidelines, you can miximize the effectiveness of getting the expected result.

## Known issues

<table>
  <thead>
    <tr>
      <th>SSR</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>MPLABX-7651</td>
      <td>After running debug session for more than 2 minutes, the plots on Event Recorder may appear unsynchronized, resulting in different time limits for each plot. If debug session is stopped, the plots will continue to populate and data will not be lost.</td>
    </tr>
    <tr>
      <td>MPLABX-7652</td>
      <td>When the system is overloaded, events within a particular time range may be skipped. This issue arises when the memory buffer of Event Recorder is too small and events are generated at a very high speed, debugger is not fast enough to read the events before they are overwritten. This problem appears only on Windows.</td>
    </tr>
    <tr>
      <td>MPLABX-7654</td>
      <td>Open all plots needed before starting debug session. When initiating a debug session, an initialization of Event Recorder is necessary to capture data and display it in plot. If a plot is opened after the initialization, the data captured during the debugging may not be displayed.</td>
    </tr>
    <tr>
      <td>MPLABX-7661</td>
      <td>The zoom in and out and rotate functionties are not available while the debugger is running. It's recommended to pause or stop the debugging process before attempting to utilize these plot functionalities. </td>
    </tr>
    <tr>
      <td>MPLABX-7675</td>
      <td>The memory allocation in the Event Recorder occurs only once at the strat of the debugging session. If the data is cleared while the debugger is running, the memory plot will not be repopulated. </td>
    </tr>

  </tbody>