:: Balanced power plan configuration. It is intended to be used for desktops with SSDs. This configuration should enable better power management while also improving responsiveness.

:: Sets the title of the window
title Configure balanced power plan

:: Set the plan to be modified (BALANCED power plan GUID: 381b4222-f694-41f0-9685-ff5bb260df2e)
set powerPlanGuid=381b4222-f694-41f0-9685-ff5bb260df2e

:: Sets the desired power plan to be changed as active
powercfg /setactive %powerPlanGuid%

:: Disable idle disk shutdown
powercfg /setacvalueindex %powerPlanGuid% SUB_DISK DISKIDLE 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_DISK DISKIDLE 0

:: Disable sleep due to inactivity
powercfg /setacvalueindex %powerPlanGuid% SUB_SLEEP STANDBYIDLE 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_SLEEP STANDBYIDLE 0

:: Allow the CPU frequency to drop as much as possible
powercfg /setacvalueindex %powerPlanGuid% SUB_PROCESSOR PROCTHROTTLEMIN 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_PROCESSOR PROCTHROTTLEMIN 0

:: Disable screen shutdown
powercfg /setacvalueindex %powerPlanGuid% SUB_VIDEO VIDEOIDLE 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_VIDEO VIDEOIDLE 0

:: Disable USB energy savings (useful when a KVM is used to get faster peripherals switch)
:: Might be needed; leaving it off for now until proper tests are performed in w11

:: No restart required.