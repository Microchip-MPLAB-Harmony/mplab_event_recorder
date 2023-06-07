/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <string.h>
#include "event_recorder/RTE_Components.h"
#include "event_recorder/EventRecorder.h"  


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


void delayms(uint32_t ms) {
    uint32_t start, elapsed;
    uint32_t count = ms * (SystemCoreClock / 1000000);

    start = DWT->CYCCNT; //CYCCNT is 32bits, so no wrap problems till over 1 Hour
    while (1) {
        elapsed = DWT->CYCCNT - start;
        if (elapsed >= count)
            return;
    }
}

void CreateFunction(char* name, int id) {
    size_t length = strlen(name);
    char data[length + 4];
    memcpy(data, &id, 4);
    memcpy(&data[4], name, length);
    EventRecordData(0x4A01 + EventLevelOp, data, length + 4);
}

void RecordValue() {
    EventRecord2(0x4A04 + EventLevelOp, 0, rand() % RAND_MAX);
}

void Fun1() {
    EventRecord2(0x4A02 + EventLevelOp, 1, 0); // Event at Start

    // do something
    RecordValue();
    delayms(rand() % RAND_MAX * 100);

    EventRecord2(0x4A03 + EventLevelOp, 1, 0); // Event at Finish
}

void Fun2() {
    EventRecord2(0x4A02 + EventLevelOp, 2, 0); // Event at Start

    // do something
    RecordValue();
    delayms(rand() % RAND_MAX * 100);

    EventRecord2(0x4A03 + EventLevelOp, 2, 0); // Event at Finish
}

void Fun3() {
    EventRecord2(0x4A02 + EventLevelOp, 3, 0); // Event at Start

    // do something
    RecordValue();
    delayms(rand() % RAND_MAX * 100);

    EventRecord2(0x4A03 + EventLevelOp, 3, 0); // Event at Finish
}

int main(void) {
    /* Initialize all modules */
    SYS_Initialize(NULL);

    CreateFunction("Fun1", 1);
    CreateFunction("Fun2", 2);
    CreateFunction("Fun3", 3);

    while (1) {
        Fun1();
        Fun2();
        Fun3();
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE);
}


/*******************************************************************************
 End of File
 */

