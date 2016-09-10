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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vUSB.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vFIFO.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/xprintf.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_CMND.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_MENU.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/usb/src/dynamic/usb_device.c ../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/597232971/vUSB.o ${OBJECTDIR}/_ext/597232971/vFIFO.o ${OBJECTDIR}/_ext/597232971/xprintf.o ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/610166344/usb_device.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/597232971/vUSB.o.d ${OBJECTDIR}/_ext/597232971/vFIFO.o.d ${OBJECTDIR}/_ext/597232971/xprintf.o.d ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d ${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d ${OBJECTDIR}/_ext/610166344/usb_device.o.d ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/597232971/vUSB.o ${OBJECTDIR}/_ext/597232971/vFIFO.o ${OBJECTDIR}/_ext/597232971/xprintf.o ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/610166344/usb_device.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o

# Source Files
SOURCEFILES=../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vUSB.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vFIFO.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/xprintf.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_CMND.c C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_MENU.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/usb/src/dynamic/usb_device.c ../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128D
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vUSB.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vUSB.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vUSB.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vUSB.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vUSB.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vUSB.o.d" -o ${OBJECTDIR}/_ext/597232971/vUSB.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vUSB.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vFIFO.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vFIFO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vFIFO.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vFIFO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vFIFO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vFIFO.o.d" -o ${OBJECTDIR}/_ext/597232971/vFIFO.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vFIFO.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/xprintf.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/xprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/xprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/xprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/xprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/xprintf.o.d" -o ${OBJECTDIR}/_ext/597232971/xprintf.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/xprintf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_CMND.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d" -o ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_CMND.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_MENU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d" -o ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_MENU.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/764219029/drv_usbfs.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/610166344/usb_device.o: ../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device.o ../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc.o: ../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o: ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vUSB.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vUSB.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vUSB.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vUSB.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vUSB.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vUSB.o.d" -o ${OBJECTDIR}/_ext/597232971/vUSB.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vUSB.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vFIFO.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vFIFO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vFIFO.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vFIFO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vFIFO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vFIFO.o.d" -o ${OBJECTDIR}/_ext/597232971/vFIFO.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vFIFO.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/xprintf.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/xprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/xprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/xprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/xprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/xprintf.o.d" -o ${OBJECTDIR}/_ext/597232971/xprintf.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/xprintf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_CMND.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o.d" -o ${OBJECTDIR}/_ext/597232971/vSERIAL_CMND.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_CMND.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o: C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_MENU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/597232971" 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d 
	@${RM} ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o.d" -o ${OBJECTDIR}/_ext/597232971/vSERIAL_MENU.o C:/Microchip/harmony/v1_08_01/apps/vSerialComandInjector002/firmware/src/vSERIAL_MENU.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/764219029/drv_usbfs.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/610166344/usb_device.o: ../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device.o ../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc.o: ../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o: ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX250F128D_peripherals.a ../../../../framework/tcpip/src/crypto/aes_pic32mx.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX250F128D_peripherals.a ..\..\..\..\framework\tcpip\src\crypto\aes_pic32mx.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX250F128D_peripherals.a ../../../../framework/tcpip/src/crypto/aes_pic32mx.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX250F128D_peripherals.a ..\..\..\..\framework\tcpip\src\crypto\aes_pic32mx.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/vUSB_CDC_basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
