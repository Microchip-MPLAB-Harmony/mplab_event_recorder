#/*****************************************************************************
# Copyright (C) 2013-2023 Microchip Technology Inc. and its subsidiaries.
#
# Microchip Technology Inc. and its subsidiaries.
#
# Subject to your compliance with these terms, you may use Microchip software 
# and any derivatives exclusively with Microchip products. It is your 
# responsibility to comply with third party license terms applicable to your 
# use of third party software (including open source software) that may 
# accompany Microchip software.
# 
# THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
# EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
# WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR 
# PURPOSE.
# 
# IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
# INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
# WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
# BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE 
# FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN 
# ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, 
# THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
# *****************************************************************************/
import os

def instantiateComponent(component):
    count = component.createKeyValueSetSymbol("EVENT_RECORD_COUNT", None)
    count.setLabel("Number of Records")
    count.addKey("0", "8", "")
    count.addKey("1", "16", "")
    count.addKey("2", "32", "")
    count.addKey("3", "64", "")
    count.addKey("4", "128", "")
    count.addKey("5", "256", "")
    count.addKey("6", "512", "")
    count.addKey("7", "1024", "")
    count.addKey("8", "2048", "")
    count.addKey("9", "4096", "")
    count.addKey("10", "8192", "")
    count.addKey("11", "16384", "")
    count.addKey("12", "32768", "")
    count.addKey("13", "65536", "")
    count.setOutputMode("Value")
    count.setDisplayMode("Value")
    count.setDefaultValue(3)

    source = component.createKeyValueSetSymbol("EVENT_TIMESTAMP_SOURCE", None)
    source.setLabel("Time Stamp Source")
    source.addKey("DWT Cycle Counter", "0", "")
    source.addKey("SysTick", "1", "")
    source.addKey("CMSIS-RTOS2 System Timer", "2", "")
    source.addKey("User Timer(Normal Reset)", "3", "")
    source.addKey("User Timer(Power-On Reset)", "4", "")
    source.setOutputMode("Value")
    source.setDisplayMode("Key")
    source.setDefaultValue(0)

    freq = component.createIntegerSymbol("EVENT_TIMESTAMP_FREQ", None)
    freq.setLabel("Time Stamp Clock Frequency [Hz]")
    freq.setDefaultValue(0)
    freq.setMin(0)
    freq.setMax(1000000000)
    
    eventConfigHeaderFile = component.createFileSymbol("EVENT_RECORDER_CONF_HEADER", None)
    eventConfigHeaderFile.setSourcePath("templates/EventRecorderConf.h.ftl")
    eventConfigHeaderFile.setOutputName("EventRecorderConf.h")
    eventConfigHeaderFile.setMarkup(True)
    eventConfigHeaderFile.setDestPath("event_recorder")
    eventConfigHeaderFile.setProjectPath("event_recorder")
    eventConfigHeaderFile.setType("HEADER")

    coreClock = Database.getSymbolValue("core", "CPU_CLOCK_FREQUENCY")
    processor = Variables.get("__PROCESSOR").lower()
    deviceHeader = "\"" + processor.lstrip("at") + ".h\""

    RTEHeaderFile = component.createFileSymbol("RUNTIME_ENVIRONMENT_HEADER", None)
    RTEHeaderFile.setSourcePath("templates/RTE_Components.h.ftl")
    RTEHeaderFile.setOutputName("RTE_Components.h")
    RTEHeaderFile.setMarkup(True)
    RTEHeaderFile.setDestPath("event_recorder")
    RTEHeaderFile.setProjectPath("event_recorder")
    RTEHeaderFile.setType("HEADER")
    RTEHeaderFile.addMarkupVariable("SYSTEM_CORE_CLOCK", coreClock)
    RTEHeaderFile.addMarkupVariable("DEVICE_HEADER", deviceHeader)

    EventRecorderHeader = component.createFileSymbol("EVENT_RECORDER_HEADER", None)
    EventRecorderHeader.setSourcePath("lib/CMSIS-View-1.1.1/EventRecorder/Include/EventRecorder.h")
    EventRecorderHeader.setOutputName("EventRecorder.h")
    EventRecorderHeader.setDestPath("event_recorder")
    EventRecorderHeader.setProjectPath("event_recorder")
    EventRecorderHeader.setType("HEADER")

    EventRecorderSource = component.createFileSymbol("EVENT_RECORDER_SOURCE", None)
    EventRecorderSource.setSourcePath("lib/CMSIS-View-1.1.1/EventRecorder/Source/EventRecorder.c")
    EventRecorderSource.setOutputName("EventRecorder.c")
    EventRecorderSource.setDestPath("event_recorder")
    EventRecorderSource.setProjectPath("event_recorder")
    EventRecorderSource.setType("SOURCE")

    RTOS_HOOK_HEADER = component.createFileSymbol("RTOS_HOOK_HEADER", None)
    RTOS_HOOK_HEADER.setSourcePath("lib/RTOS/EventRecorderRTOSHook.h")
    RTOS_HOOK_HEADER.setOutputName("EventRecorderRTOSHook.h")
    RTOS_HOOK_HEADER.setDestPath("event_recorder")
    RTOS_HOOK_HEADER.setProjectPath("event_recorder")
    RTOS_HOOK_HEADER.setType("HEADER")
    RTOS_HOOK_HEADER.setDependencies(includeRTOSFiles, ["HarmonyCore.SELECT_RTOS"])

    RTOS_HOOK_SOURCE = component.createFileSymbol("RTOS_HOOK_SOURCE", None)
    RTOS_HOOK_SOURCE.setSourcePath("lib/RTOS/EventRecorderRTOSHook.c")
    RTOS_HOOK_SOURCE.setOutputName("EventRecorderRTOSHook.c")
    RTOS_HOOK_SOURCE.setDestPath("event_recorder")
    RTOS_HOOK_SOURCE.setProjectPath("event_recorder")
    RTOS_HOOK_SOURCE.setType("SOURCE")
    RTOS_HOOK_SOURCE.setDependencies(includeRTOSFiles, ["HarmonyCore.SELECT_RTOS"])

    RTOS_TRACE_HEADER = component.createFileSymbol("RTOS_TRACE_HEADER", None)
    RTOS_TRACE_HEADER.setSourcePath("lib/RTOS/EventRecorderRTOSTrace.h")
    RTOS_TRACE_HEADER.setOutputName("EventRecorderRTOSTrace.h")
    RTOS_TRACE_HEADER.setDestPath("event_recorder")
    RTOS_TRACE_HEADER.setProjectPath("event_recorder")
    RTOS_TRACE_HEADER.setType("HEADER")
    RTOS_TRACE_HEADER.setDependencies(includeRTOSFiles, ["HarmonyCore.SELECT_RTOS"])

    RTOS_TRACE_SOURCE = component.createFileSymbol("RTOS_TRACE_SOURCE", None)
    RTOS_TRACE_SOURCE.setSourcePath("lib/RTOS/EventRecorderRTOSTrace.c")
    RTOS_TRACE_SOURCE.setOutputName("EventRecorderRTOSTrace.c")
    RTOS_TRACE_SOURCE.setDestPath("event_recorder")
    RTOS_TRACE_SOURCE.setProjectPath("event_recorder")
    RTOS_TRACE_SOURCE.setType("SOURCE")
    RTOS_TRACE_SOURCE.setDependencies(includeRTOSFiles, ["HarmonyCore.SELECT_RTOS"])

    RTOS_TRACE_SCVD = component.createFileSymbol("RTOS_TRACE_SCVD", None)
    RTOS_TRACE_SCVD.setSourcePath("lib/RTOS/freertos_view.scvd")
    RTOS_TRACE_SCVD.setOutputName("freertos_view.scvd")
    RTOS_TRACE_SCVD.setDestPath("event_recorder")
    RTOS_TRACE_SCVD.setProjectPath("event_recorder")
    RTOS_TRACE_SCVD.setType("IMPORTANT")
    RTOS_TRACE_SCVD.setDependencies(includeRTOSFiles, ["HarmonyCore.SELECT_RTOS"])

def includeRTOSFiles(symbol, event):
	symbol.setEnabled(event["value"] != None and event["value"] != "BareMetal")