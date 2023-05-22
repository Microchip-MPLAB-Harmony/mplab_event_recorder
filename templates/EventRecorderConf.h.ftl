/*
 * Company: Microchip Technology Inc.
 *
 * Name:    EventRecorderConf.h
 * Summary: Event Recorder software component configuration options
 */

//-------- <<< Use Configuration Wizard in Context Menu >>> --------------------

//   Number of Records
//   Configures size of Event Record Buffer (each record is 16 bytes)
//   Must be 2^n (min=8, max=65536)
#define EVENT_RECORD_COUNT      ${EVENT_RECORD_COUNT}

//   Time Stamp Source
//   0: DWT Cycle Counter  1: SysTick  2: CMSIS-RTOS2 System Timer
//   3: User Timer (Normal Reset)  4: User Timer (Power-On Reset)
//   Selects source for 32-bit time stamp
#define EVENT_TIMESTAMP_SOURCE  ${EVENT_TIMESTAMP_SOURCE}

//   Time Stamp Clock Frequency [Hz] <0-1000000000>
//   Defines initial time stamp clock frequency (0 when not used)
#define EVENT_TIMESTAMP_FREQ    ${EVENT_TIMESTAMP_FREQ}

//------------- <<< end of configuration section >>> ---------------------------
