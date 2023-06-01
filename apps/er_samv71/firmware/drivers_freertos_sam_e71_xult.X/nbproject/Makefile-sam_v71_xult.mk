#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-sam_v71_xult.mk)" "nbproject/Makefile-local-sam_v71_xult.mk"
include nbproject/Makefile-local-sam_v71_xult.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_v71_xult
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_v71_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_v71_xult/driver/usart/src/drv_usart.c ../src/config/sam_v71_xult/osal/osal_freertos.c ../src/config/sam_v71_xult/peripheral/clk/plib_clk.c ../src/config/sam_v71_xult/peripheral/efc/plib_efc.c ../src/config/sam_v71_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_v71_xult/peripheral/pio/plib_pio.c ../src/config/sam_v71_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_v71_xult/peripheral/usart/plib_usart1.c ../src/config/sam_v71_xult/stdio/xc32_monitor.c ../src/config/sam_v71_xult/system/cache/sys_cache.c ../src/config/sam_v71_xult/system/dma/sys_dma.c ../src/config/sam_v71_xult/system/int/src/sys_int.c ../src/config/sam_v71_xult/libc_syscalls.c ../src/config/sam_v71_xult/exceptions.c ../src/config/sam_v71_xult/startup_xc32.c ../src/config/sam_v71_xult/interrupts.c ../src/config/sam_v71_xult/freertos_hooks.c ../src/config/sam_v71_xult/tasks.c ../src/config/sam_v71_xult/initialization.c ../src/config/sam_v71_xult/event_recorder/EventRecorder.c ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSHook.c ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSTrace.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/main_v71.c ../src/app_user_input_thread.c ../src/app_sensor_thread.c ../src/app_eeprom_thread.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1059770704/drv_i2c.o ${OBJECTDIR}/_ext/1008599899/drv_usart.o ${OBJECTDIR}/_ext/191436215/osal_freertos.o ${OBJECTDIR}/_ext/1157990217/plib_clk.o ${OBJECTDIR}/_ext/1157988489/plib_efc.o ${OBJECTDIR}/_ext/1537621011/plib_nvic.o ${OBJECTDIR}/_ext/1157977813/plib_pio.o ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o ${OBJECTDIR}/_ext/415242918/plib_usart1.o ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o ${OBJECTDIR}/_ext/1871840330/sys_cache.o ${OBJECTDIR}/_ext/1101960256/sys_dma.o ${OBJECTDIR}/_ext/663512716/sys_int.o ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o ${OBJECTDIR}/_ext/1320227943/exceptions.o ${OBJECTDIR}/_ext/1320227943/startup_xc32.o ${OBJECTDIR}/_ext/1320227943/interrupts.o ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o ${OBJECTDIR}/_ext/1320227943/tasks.o ${OBJECTDIR}/_ext/1320227943/initialization.o ${OBJECTDIR}/_ext/1765349525/EventRecorder.o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/1360937237/main_v71.o ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1059770704/drv_i2c.o.d ${OBJECTDIR}/_ext/1008599899/drv_usart.o.d ${OBJECTDIR}/_ext/191436215/osal_freertos.o.d ${OBJECTDIR}/_ext/1157990217/plib_clk.o.d ${OBJECTDIR}/_ext/1157988489/plib_efc.o.d ${OBJECTDIR}/_ext/1537621011/plib_nvic.o.d ${OBJECTDIR}/_ext/1157977813/plib_pio.o.d ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/415242918/plib_usart1.o.d ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o.d ${OBJECTDIR}/_ext/1871840330/sys_cache.o.d ${OBJECTDIR}/_ext/1101960256/sys_dma.o.d ${OBJECTDIR}/_ext/663512716/sys_int.o.d ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o.d ${OBJECTDIR}/_ext/1320227943/exceptions.o.d ${OBJECTDIR}/_ext/1320227943/startup_xc32.o.d ${OBJECTDIR}/_ext/1320227943/interrupts.o.d ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o.d ${OBJECTDIR}/_ext/1320227943/tasks.o.d ${OBJECTDIR}/_ext/1320227943/initialization.o.d ${OBJECTDIR}/_ext/1765349525/EventRecorder.o.d ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o.d ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o.d ${OBJECTDIR}/_ext/977623654/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/1360937237/main_v71.o.d ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o.d ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o.d ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1059770704/drv_i2c.o ${OBJECTDIR}/_ext/1008599899/drv_usart.o ${OBJECTDIR}/_ext/191436215/osal_freertos.o ${OBJECTDIR}/_ext/1157990217/plib_clk.o ${OBJECTDIR}/_ext/1157988489/plib_efc.o ${OBJECTDIR}/_ext/1537621011/plib_nvic.o ${OBJECTDIR}/_ext/1157977813/plib_pio.o ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o ${OBJECTDIR}/_ext/415242918/plib_usart1.o ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o ${OBJECTDIR}/_ext/1871840330/sys_cache.o ${OBJECTDIR}/_ext/1101960256/sys_dma.o ${OBJECTDIR}/_ext/663512716/sys_int.o ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o ${OBJECTDIR}/_ext/1320227943/exceptions.o ${OBJECTDIR}/_ext/1320227943/startup_xc32.o ${OBJECTDIR}/_ext/1320227943/interrupts.o ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o ${OBJECTDIR}/_ext/1320227943/tasks.o ${OBJECTDIR}/_ext/1320227943/initialization.o ${OBJECTDIR}/_ext/1765349525/EventRecorder.o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/1360937237/main_v71.o ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o

# Source Files
SOURCEFILES=../src/config/sam_v71_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_v71_xult/driver/usart/src/drv_usart.c ../src/config/sam_v71_xult/osal/osal_freertos.c ../src/config/sam_v71_xult/peripheral/clk/plib_clk.c ../src/config/sam_v71_xult/peripheral/efc/plib_efc.c ../src/config/sam_v71_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_v71_xult/peripheral/pio/plib_pio.c ../src/config/sam_v71_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_v71_xult/peripheral/usart/plib_usart1.c ../src/config/sam_v71_xult/stdio/xc32_monitor.c ../src/config/sam_v71_xult/system/cache/sys_cache.c ../src/config/sam_v71_xult/system/dma/sys_dma.c ../src/config/sam_v71_xult/system/int/src/sys_int.c ../src/config/sam_v71_xult/libc_syscalls.c ../src/config/sam_v71_xult/exceptions.c ../src/config/sam_v71_xult/startup_xc32.c ../src/config/sam_v71_xult/interrupts.c ../src/config/sam_v71_xult/freertos_hooks.c ../src/config/sam_v71_xult/tasks.c ../src/config/sam_v71_xult/initialization.c ../src/config/sam_v71_xult/event_recorder/EventRecorder.c ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSHook.c ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSTrace.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/main_v71.c ../src/app_user_input_thread.c ../src/app_sensor_thread.c ../src/app_eeprom_thread.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_v71_xult.mk ${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMV71Q21B
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_v71_xult\ATSAMV71Q21B.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1059770704/drv_i2c.o: ../src/config/sam_v71_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_v71_xult/28fa71821c364ccc296a8538a2a91f996010ecaa .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1059770704" 
	@${RM} ${OBJECTDIR}/_ext/1059770704/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1059770704/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1059770704/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/1059770704/drv_i2c.o ../src/config/sam_v71_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1008599899/drv_usart.o: ../src/config/sam_v71_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_v71_xult/c81fe664b704f39b5f1d4267938e73493d29dc9 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008599899" 
	@${RM} ${OBJECTDIR}/_ext/1008599899/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008599899/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1008599899/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1008599899/drv_usart.o ../src/config/sam_v71_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/191436215/osal_freertos.o: ../src/config/sam_v71_xult/osal/osal_freertos.c  .generated_files/flags/sam_v71_xult/68583fd3ab2f8a886f3554b73d62a3b4d6460734 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/191436215" 
	@${RM} ${OBJECTDIR}/_ext/191436215/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/191436215/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/191436215/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/191436215/osal_freertos.o ../src/config/sam_v71_xult/osal/osal_freertos.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157990217/plib_clk.o: ../src/config/sam_v71_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_v71_xult/f3bfa2f2e69890a3b0e2b51e29c52c7feb815ed0 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1157990217" 
	@${RM} ${OBJECTDIR}/_ext/1157990217/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157990217/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157990217/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1157990217/plib_clk.o ../src/config/sam_v71_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157988489/plib_efc.o: ../src/config/sam_v71_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_v71_xult/85fd4cd50796205c005e3e5c3e783ed1f99e61db .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1157988489" 
	@${RM} ${OBJECTDIR}/_ext/1157988489/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157988489/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157988489/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1157988489/plib_efc.o ../src/config/sam_v71_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1537621011/plib_nvic.o: ../src/config/sam_v71_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_v71_xult/d542be62ae517d7ba421458a3b28f80d03844b8e .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1537621011" 
	@${RM} ${OBJECTDIR}/_ext/1537621011/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537621011/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1537621011/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1537621011/plib_nvic.o ../src/config/sam_v71_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157977813/plib_pio.o: ../src/config/sam_v71_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_v71_xult/6c38252763d4770d1c45905f17ecef79ee815bdc .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1157977813" 
	@${RM} ${OBJECTDIR}/_ext/1157977813/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157977813/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157977813/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1157977813/plib_pio.o ../src/config/sam_v71_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o: ../src/config/sam_v71_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_v71_xult/99daaa21499926950bdb7844f18b499bffc1be1b .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1738504299" 
	@${RM} ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o ../src/config/sam_v71_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/415242918/plib_usart1.o: ../src/config/sam_v71_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_v71_xult/5d88ee0537616c98f6d06f8545b045914b56e516 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/415242918" 
	@${RM} ${OBJECTDIR}/_ext/415242918/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/415242918/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/415242918/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/415242918/plib_usart1.o ../src/config/sam_v71_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1643282145/xc32_monitor.o: ../src/config/sam_v71_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_v71_xult/f1b2d41b37bdbccd28d1c88473f70c99ec8249d5 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1643282145" 
	@${RM} ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1643282145/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o ../src/config/sam_v71_xult/stdio/xc32_monitor.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1871840330/sys_cache.o: ../src/config/sam_v71_xult/system/cache/sys_cache.c  .generated_files/flags/sam_v71_xult/69d542da896e4c08369dd863fdc4a2aa8e5f97d7 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1871840330" 
	@${RM} ${OBJECTDIR}/_ext/1871840330/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1871840330/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1871840330/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1871840330/sys_cache.o ../src/config/sam_v71_xult/system/cache/sys_cache.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1101960256/sys_dma.o: ../src/config/sam_v71_xult/system/dma/sys_dma.c  .generated_files/flags/sam_v71_xult/d2c988d3ae7dbcb7c960426881951c3f260fe9a4 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1101960256" 
	@${RM} ${OBJECTDIR}/_ext/1101960256/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1101960256/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1101960256/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1101960256/sys_dma.o ../src/config/sam_v71_xult/system/dma/sys_dma.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/663512716/sys_int.o: ../src/config/sam_v71_xult/system/int/src/sys_int.c  .generated_files/flags/sam_v71_xult/a53b80496e178699ec31c2110965848f3c9b9bfa .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/663512716" 
	@${RM} ${OBJECTDIR}/_ext/663512716/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/663512716/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/663512716/sys_int.o.d" -o ${OBJECTDIR}/_ext/663512716/sys_int.o ../src/config/sam_v71_xult/system/int/src/sys_int.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/libc_syscalls.o: ../src/config/sam_v71_xult/libc_syscalls.c  .generated_files/flags/sam_v71_xult/6395d3c5076f8868239dcf67085bd00715fe93bc .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o ../src/config/sam_v71_xult/libc_syscalls.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/exceptions.o: ../src/config/sam_v71_xult/exceptions.c  .generated_files/flags/sam_v71_xult/6e4c8d617977db7b49d259927341b61565220cad .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/exceptions.o.d" -o ${OBJECTDIR}/_ext/1320227943/exceptions.o ../src/config/sam_v71_xult/exceptions.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/startup_xc32.o: ../src/config/sam_v71_xult/startup_xc32.c  .generated_files/flags/sam_v71_xult/19f3bd348963b9235f99909fecd555f3ab21c572 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1320227943/startup_xc32.o ../src/config/sam_v71_xult/startup_xc32.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/interrupts.o: ../src/config/sam_v71_xult/interrupts.c  .generated_files/flags/sam_v71_xult/d51dcf661134737c46e0e58dd43aabeb2523eba3 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/interrupts.o.d" -o ${OBJECTDIR}/_ext/1320227943/interrupts.o ../src/config/sam_v71_xult/interrupts.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/freertos_hooks.o: ../src/config/sam_v71_xult/freertos_hooks.c  .generated_files/flags/sam_v71_xult/ed56f29c8c26294ba4fbb451a8195c9217b5bea4 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o ../src/config/sam_v71_xult/freertos_hooks.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/tasks.o: ../src/config/sam_v71_xult/tasks.c  .generated_files/flags/sam_v71_xult/9b09d2cdd8623d80e8d7da4edc66d0ceee22e813 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/tasks.o.d" -o ${OBJECTDIR}/_ext/1320227943/tasks.o ../src/config/sam_v71_xult/tasks.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/initialization.o: ../src/config/sam_v71_xult/initialization.c  .generated_files/flags/sam_v71_xult/1b07419c2044452abd8b728fc77f3be538b91831 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/initialization.o.d" -o ${OBJECTDIR}/_ext/1320227943/initialization.o ../src/config/sam_v71_xult/initialization.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1765349525/EventRecorder.o: ../src/config/sam_v71_xult/event_recorder/EventRecorder.c  .generated_files/flags/sam_v71_xult/cd4d6155cd2b471a80c7a58d0df387f264b32802 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1765349525" 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1765349525/EventRecorder.o.d" -o ${OBJECTDIR}/_ext/1765349525/EventRecorder.o ../src/config/sam_v71_xult/event_recorder/EventRecorder.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o: ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSHook.c  .generated_files/flags/sam_v71_xult/faafe87c575614c25174b448bc6a1fa9065ad933 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1765349525" 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o.d" -o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSHook.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o: ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSTrace.c  .generated_files/flags/sam_v71_xult/30d53c82940de2f9b7ae64219564b2604fdf691 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1765349525" 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o.d 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o.d" -o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSTrace.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_v71_xult/1432eba68c92c9d5bd72593d4a2c49c488c70ede .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_v71_xult/ba426d72f33d6893c384d6eb2fe3456e74fc60a5 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_v71_xult/8cf276dd1245bc087a07e77a2a3bc75ef1ab0d92 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_v71_xult/b31aa7a5bc853a232f510e631611b69a71bf4d33 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_v71_xult/cc6cf81f509a98a8cc4168ee5a7ef54fd8ce5e5d .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_v71_xult/b51b8605cb9030a2052353bf876147268d5f4081 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_v71_xult/818d8fdc67614c5ae3aaeccdc205a422b5b1f214 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_v71_xult/7f29e1da833b98ca8e50028846ee64d4bc7ded60 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_v71_xult/584af97b13dd05c57d518fe063d5a0d939e4de4f .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_v71.o: ../src/main_v71.c  .generated_files/flags/sam_v71_xult/98f91767d21e896971f844ba3407fcc0db7fbfbd .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_v71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_v71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_v71.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_v71.o ../src/main_v71.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o: ../src/app_user_input_thread.c  .generated_files/flags/sam_v71_xult/43ed757793a1515634ebb7282edd9e2e01525d38 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o ../src/app_user_input_thread.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o: ../src/app_sensor_thread.c  .generated_files/flags/sam_v71_xult/13c84726163f27690ec2cb00a178814ead16ef68 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o ../src/app_sensor_thread.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o: ../src/app_eeprom_thread.c  .generated_files/flags/sam_v71_xult/9a9a978f618770b2f7a5c9cdb036f26854978776 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o ../src/app_eeprom_thread.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1059770704/drv_i2c.o: ../src/config/sam_v71_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_v71_xult/e558a4e577f581e2b22443fc8262199ff4500ed7 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1059770704" 
	@${RM} ${OBJECTDIR}/_ext/1059770704/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1059770704/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1059770704/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/1059770704/drv_i2c.o ../src/config/sam_v71_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1008599899/drv_usart.o: ../src/config/sam_v71_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_v71_xult/6788b63081d04b57eb4ad300fa4c94729da27e88 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008599899" 
	@${RM} ${OBJECTDIR}/_ext/1008599899/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008599899/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1008599899/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1008599899/drv_usart.o ../src/config/sam_v71_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/191436215/osal_freertos.o: ../src/config/sam_v71_xult/osal/osal_freertos.c  .generated_files/flags/sam_v71_xult/481ec50f5e9f44114aa3c1024b99cdda5c0e4020 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/191436215" 
	@${RM} ${OBJECTDIR}/_ext/191436215/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/191436215/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/191436215/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/191436215/osal_freertos.o ../src/config/sam_v71_xult/osal/osal_freertos.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157990217/plib_clk.o: ../src/config/sam_v71_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_v71_xult/f6c30c12ae92ae71f42bd26337a1e59840bb5c93 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1157990217" 
	@${RM} ${OBJECTDIR}/_ext/1157990217/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157990217/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157990217/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1157990217/plib_clk.o ../src/config/sam_v71_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157988489/plib_efc.o: ../src/config/sam_v71_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_v71_xult/f26d1c5a1171ec7ad83e8aa2f034af8d4db5fa53 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1157988489" 
	@${RM} ${OBJECTDIR}/_ext/1157988489/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157988489/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157988489/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1157988489/plib_efc.o ../src/config/sam_v71_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1537621011/plib_nvic.o: ../src/config/sam_v71_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_v71_xult/cb9594f7e64d533254378416f2a621503231352f .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1537621011" 
	@${RM} ${OBJECTDIR}/_ext/1537621011/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537621011/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1537621011/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1537621011/plib_nvic.o ../src/config/sam_v71_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157977813/plib_pio.o: ../src/config/sam_v71_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_v71_xult/6110e987429e045a03609e1feb58f8c5e0deb168 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1157977813" 
	@${RM} ${OBJECTDIR}/_ext/1157977813/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157977813/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157977813/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1157977813/plib_pio.o ../src/config/sam_v71_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o: ../src/config/sam_v71_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_v71_xult/3dc24bf0679c233d867a0b08b011f16dce1083fb .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1738504299" 
	@${RM} ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1738504299/plib_twihs0_master.o ../src/config/sam_v71_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/415242918/plib_usart1.o: ../src/config/sam_v71_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_v71_xult/13f72b9dacc7d519c69a687a826bab157052aba8 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/415242918" 
	@${RM} ${OBJECTDIR}/_ext/415242918/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/415242918/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/415242918/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/415242918/plib_usart1.o ../src/config/sam_v71_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1643282145/xc32_monitor.o: ../src/config/sam_v71_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_v71_xult/579cd661be30d0625346461a8592445abc4ce98b .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1643282145" 
	@${RM} ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1643282145/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1643282145/xc32_monitor.o ../src/config/sam_v71_xult/stdio/xc32_monitor.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1871840330/sys_cache.o: ../src/config/sam_v71_xult/system/cache/sys_cache.c  .generated_files/flags/sam_v71_xult/db65304c95f0fe602162186e50174523538254ac .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1871840330" 
	@${RM} ${OBJECTDIR}/_ext/1871840330/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1871840330/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1871840330/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1871840330/sys_cache.o ../src/config/sam_v71_xult/system/cache/sys_cache.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1101960256/sys_dma.o: ../src/config/sam_v71_xult/system/dma/sys_dma.c  .generated_files/flags/sam_v71_xult/8ff653a9cc6ee47127924e6220b9b8014eaf9b73 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1101960256" 
	@${RM} ${OBJECTDIR}/_ext/1101960256/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1101960256/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1101960256/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1101960256/sys_dma.o ../src/config/sam_v71_xult/system/dma/sys_dma.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/663512716/sys_int.o: ../src/config/sam_v71_xult/system/int/src/sys_int.c  .generated_files/flags/sam_v71_xult/989beb7b778d5a5a3094ea1ad1b31b85518442c3 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/663512716" 
	@${RM} ${OBJECTDIR}/_ext/663512716/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/663512716/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/663512716/sys_int.o.d" -o ${OBJECTDIR}/_ext/663512716/sys_int.o ../src/config/sam_v71_xult/system/int/src/sys_int.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/libc_syscalls.o: ../src/config/sam_v71_xult/libc_syscalls.c  .generated_files/flags/sam_v71_xult/e35d97d6481a27f9f1a8443e2d905cf8018f59ab .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1320227943/libc_syscalls.o ../src/config/sam_v71_xult/libc_syscalls.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/exceptions.o: ../src/config/sam_v71_xult/exceptions.c  .generated_files/flags/sam_v71_xult/65fef9ad02ff513407b4cd38f340f04ca97e97b2 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/exceptions.o.d" -o ${OBJECTDIR}/_ext/1320227943/exceptions.o ../src/config/sam_v71_xult/exceptions.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/startup_xc32.o: ../src/config/sam_v71_xult/startup_xc32.c  .generated_files/flags/sam_v71_xult/e91c5ce383320ea774dd2918a92a2d5ce35e4a0f .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1320227943/startup_xc32.o ../src/config/sam_v71_xult/startup_xc32.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/interrupts.o: ../src/config/sam_v71_xult/interrupts.c  .generated_files/flags/sam_v71_xult/8e3fc1ce360c4611579b3b24dad9280851d2d192 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/interrupts.o.d" -o ${OBJECTDIR}/_ext/1320227943/interrupts.o ../src/config/sam_v71_xult/interrupts.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/freertos_hooks.o: ../src/config/sam_v71_xult/freertos_hooks.c  .generated_files/flags/sam_v71_xult/456edbd67df0d9ce7fa57c3012979e92b187ab29 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1320227943/freertos_hooks.o ../src/config/sam_v71_xult/freertos_hooks.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/tasks.o: ../src/config/sam_v71_xult/tasks.c  .generated_files/flags/sam_v71_xult/2dd7532508b5ad73d7099401fa044ffe6f53ed17 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/tasks.o.d" -o ${OBJECTDIR}/_ext/1320227943/tasks.o ../src/config/sam_v71_xult/tasks.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1320227943/initialization.o: ../src/config/sam_v71_xult/initialization.c  .generated_files/flags/sam_v71_xult/2190c510a1fe67ef2bf235841399c145be2bc1f6 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1320227943" 
	@${RM} ${OBJECTDIR}/_ext/1320227943/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1320227943/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1320227943/initialization.o.d" -o ${OBJECTDIR}/_ext/1320227943/initialization.o ../src/config/sam_v71_xult/initialization.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1765349525/EventRecorder.o: ../src/config/sam_v71_xult/event_recorder/EventRecorder.c  .generated_files/flags/sam_v71_xult/f67b3b2323184bd32c9a38bcc78423804097457 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1765349525" 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1765349525/EventRecorder.o.d" -o ${OBJECTDIR}/_ext/1765349525/EventRecorder.o ../src/config/sam_v71_xult/event_recorder/EventRecorder.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o: ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSHook.c  .generated_files/flags/sam_v71_xult/5b7a66bc8f3d3991d0b651ddecf134a458a7a42e .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1765349525" 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o.d" -o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSHook.o ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSHook.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o: ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSTrace.c  .generated_files/flags/sam_v71_xult/c51d0d539df90a326e4fccc4c54e4ae2e9f4f82d .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1765349525" 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o.d 
	@${RM} ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o.d" -o ${OBJECTDIR}/_ext/1765349525/EventRecorderRTOSTrace.o ../src/config/sam_v71_xult/event_recorder/EventRecorderRTOSTrace.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_v71_xult/d0fdabed02b50bde858f9efdb40182c782e9b99 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_v71_xult/9087c21b3c686e3cde89377d1a8345d5f487df7b .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_v71_xult/335b6fd45bd2b6d88bdcaf2efa3c06689c05076d .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_v71_xult/ebd6ee0df2d50a0dc07d949f399873d4ccea7811 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_v71_xult/813e56c7db5c696dd040d419d3a0e381a83bbbd .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_v71_xult/c537632448880dff4c6fcb4cb0e58eccceaf2981 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_v71_xult/4f64b44414513bada324046237d476a30f06b2de .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_v71_xult/e90c58e360a34dfedb3a6639bbc21a5a9825c9b1 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_v71_xult/bd1b58aa627a7064523443401981d0fe869dec50 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main_v71.o: ../src/main_v71.c  .generated_files/flags/sam_v71_xult/1aeb9fc00965371c85a41f32de5716a4ec7fe675 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_v71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_v71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_v71.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_v71.o ../src/main_v71.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o: ../src/app_user_input_thread.c  .generated_files/flags/sam_v71_xult/e7713ac0f7aee5c6420cdaf0619d02cc06dc0689 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_user_input_thread.o ../src/app_user_input_thread.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o: ../src/app_sensor_thread.c  .generated_files/flags/sam_v71_xult/b0d5bc4046272e5022db332199bca9ab2ee549aa .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_sensor_thread.o ../src/app_sensor_thread.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o: ../src/app_eeprom_thread.c  .generated_files/flags/sam_v71_xult/3d708cfd6fad062825511f512c56cc79c6c28df2 .generated_files/flags/sam_v71_xult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_v71_xult" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_eeprom_thread.o ../src/app_eeprom_thread.c    -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_v71_xult/ATSAMV71Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_v71_xult/ATSAMV71Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_v71_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/drivers_freertos_sam_e71_xult.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
