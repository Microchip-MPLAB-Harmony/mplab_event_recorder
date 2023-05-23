/*******************************************************************************
 * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries.
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
 * ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
//----- <<< Use Configuration Panel in MCC to auto-generate this code >>> ------

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
