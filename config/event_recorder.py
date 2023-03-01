#/*****************************************************************************
# Copyright (C) 2013-2019 Microchip Technology Inc. and its subsidiaries.
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
import glob
import tempfile
from jinja2 import Environment, FileSystemLoader

_LIB_PATHS = "CMSIS-View-1.1.1/EventRecorder/**/*"
_RTOS_PATHS = "RTOS/*"
_TEMPLATES_PATH = "templates"
_RTE_COMPONENTS_JINJA = "RTE_Components.jinja"
_EVENTRECORDERCONF_JINJA = "EventRecorderConf.jinja"
_RTE_COMPONENTS_H = "RTE_Components.h"
_EVENTRECORDERCONF_H = "EventRecorderConf.h"
fileSymbolName = "EventRecorderSource"
numFileCntr = 0

modulePath = os.path.expanduser(Module.getPath())

SYS_CORE_CLOCK = 100000000
EVENT_RECORD_COUNT = 64
EVENT_TIMESTAMP_SOURCE = 0
EVENT_TIMESTAMP_FREQ = 0

def instantiateComponent(component):
    global SYS_CORE_CLOCK, EVENT_RECORD_COUNT, EVENT_TIMESTAMP_SOURCE, EVENT_TIMESTAMP_FREQ

    clock = component.createIntegerSymbol("SysCoreClock", None)
    clock.setLabel("System Core Clock Frequency [Hz]")
    clock.setDefaultValue(SYS_CORE_CLOCK)
    clock.setMin(0)
    clock.setMax(1000000000)

    count = component.createKeyValueSetSymbol("EventRecordCount", None)
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

    source = component.createKeyValueSetSymbol("EventTimeStampSource", None)
    source.setLabel("Time Stamp Source")
    source.addKey("DWT Cycle Counter", "0", "")
    source.addKey("SysTick", "1", "")
    source.addKey("CMSIS-RTOS2 System Timer", "2", "")
    source.addKey("User Timer(Normal Reset)", "3", "")
    source.addKey("User Timer(Power-On Reset)", "4", "")
    source.setOutputMode("Value")
    source.setDisplayMode("Key")
    source.setDefaultValue(EVENT_TIMESTAMP_SOURCE)

    freq = component.createIntegerSymbol("EventTimestampFreq", None)
    freq.setLabel("Time Stamp Clock Frequency [Hz]")
    freq.setDefaultValue(EVENT_TIMESTAMP_FREQ)
    freq.setMin(0)
    freq.setMax(1000000000)
    
    rtos = component.createBooleanSymbol("FreeRTOSHooks", None)
    rtos.setLabel("Enable FreeRTOS Hooks")
    rtos.setDefaultValue(False)

    generate_headers()

    AddFilesDir(component, "lib", _LIB_PATHS, "events", "events")
    generatedFiles = AddFilesDir(component, ".generated", "*", "events", "events")
    for generatedFile in generatedFiles:
        if generatedFile.getOutputName() == _RTE_COMPONENTS_H:
            generatedFile.setDependencies(onConfigurationChanged, ["SysCoreClock"])
        elif generatedFile.getOutputName() == _EVENTRECORDERCONF_H:
            generatedFile.setDependencies(onConfigurationChanged, ["EventRecordCount", "EventTimeStampSource", "EventTimestampFreq"])
    rtosHookFiles = AddFilesDir(component, "lib", _RTOS_PATHS, "events", "events")
    for rtosHookFile in rtosHookFiles:
        rtosHookFile.setDependencies(onConfigurationChanged, ["FreeRTOSHooks"])


def onConfigurationChanged(symbol, event):
    global SYS_CORE_CLOCK, EVENT_RECORD_COUNT, EVENT_TIMESTAMP_SOURCE, EVENT_TIMESTAMP_FREQ
    symObj = event['symbol']
    if event["id"] == "SysCoreClock":
        SYS_CORE_CLOCK = int(symObj.getValue())
        generate_headers()
    elif event["id"] == "EventRecordCount":
        EVENT_RECORD_COUNT = int(symObj.getSelectedValue())
        generate_headers()
    elif event["id"] == "EventTimeStampSource":
        EVENT_TIMESTAMP_SOURCE = int(symObj.getSelectedValue())
        generate_headers()
    elif event["id"] == "EventTimestampFreq":
        EVENT_TIMESTAMP_FREQ = int(symObj.getValue())
        generate_headers()
    elif event["id"] == "FreeRTOSHooks":
        symbol.setEnabled(bool(symObj.getValue()))


def AddFilesDir(component, base_path, search_pattern, destination_path, project_path, enable=True):
    filelist = glob.iglob(modulePath + os.sep + base_path + os.sep + search_pattern)
    files = []
    for x in filelist:
        _, ext = os.path.splitext(x)
        if ext in ['.c','.h']:
            source_path = os.path.relpath(os.path.abspath(x), modulePath)
            file_name = os.path.basename(source_path)
            file_destination = destination_path
            file_project = project_path + '/' + file_name
            files.append(AddFile(component, source_path, file_destination, file_project.replace('\\','/'),
                         file_type='HEADER' if ext is 'h' else 'SOURCE', enable=enable))
    return files


def AddFile(component, src_path, dest_path, proj_path, file_type = "SOURCE", isMarkup = False, enable=True):
    global fileSymbolName
    global numFileCntr
    srcFile = component.createFileSymbol(fileSymbolName + str(numFileCntr) , None)
    srcFile.setSourcePath(src_path)
    srcFile.setDestPath(dest_path)
    srcFile.setProjectPath(proj_path)
    srcFile.setType(file_type)
    srcFile.setOutputName(os.path.basename(src_path))
    srcFile.setMarkup(isMarkup)
    srcFile.setEnabled(enable)
    numFileCntr += 1
    return srcFile


def generate_headers():
    global SYS_CORE_CLOCK, EVENT_RECORD_COUNT, EVENT_TIMESTAMP_SOURCE, EVENT_TIMESTAMP_FREQ
    environment = Environment(loader=FileSystemLoader(modulePath + os.sep + _TEMPLATES_PATH))
    rte_template = environment.get_template(_RTE_COMPONENTS_JINJA)
    conf_template = environment.get_template(_EVENTRECORDERCONF_JINJA)
    processor = Variables.get("__PROCESSOR").lower()
    header = "\"" + processor.lstrip("at") + ".h\""
    rte_content = rte_template.render(header=header, clock=SYS_CORE_CLOCK)
    conf_content = conf_template.render(count=EVENT_RECORD_COUNT, source=EVENT_TIMESTAMP_SOURCE, freq=EVENT_TIMESTAMP_FREQ)
    outputDir = modulePath + ".generated"
    if not os.path.isdir(outputDir):
        os.mkdir(outputDir)
    with open( outputDir + os.sep + _RTE_COMPONENTS_H, "w") as file:
        file.write(rte_content)
    with open( outputDir + os.sep + _EVENTRECORDERCONF_H, "w") as file:
        file.write(conf_content)

