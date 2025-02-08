:: Power Saver power plan configuration ::
:: It is intended to be used for desktops with SSDs ::
:: This configuration should enable better power management while also improving responsiveness ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Configure power saver power plan"

:: Set the plan to be modified (POWER SAVER power plan GUID: a1841308-3541-4fab-bc81-f71556f20b4a) ::
set powerPlanGuid=a1841308-3541-4fab-bc81-f71556f20b4a

:: Disable idle disk shutdown ::
powercfg /setacvalueindex %powerPlanGuid% SUB_DISK DISKIDLE 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_DISK DISKIDLE 0

:: Disable sleep due to inactivity ::
powercfg /setacvalueindex %powerPlanGuid% SUB_SLEEP STANDBYIDLE 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_SLEEP STANDBYIDLE 0

:: Allow the CPU frequency to drop as much as possible ::
powercfg /setacvalueindex %powerPlanGuid% SUB_PROCESSOR PROCTHROTTLEMIN 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_PROCESSOR PROCTHROTTLEMIN 0

:: Limit the max CPU usage (may vary from system to system) ::
powercfg /setacvalueindex %powerPlanGuid% SUB_PROCESSOR PROCTHROTTLEMAX 99
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_PROCESSOR PROCTHROTTLEMAX 99

:: Disable screen shutdown ::
powercfg /setacvalueindex %powerPlanGuid% SUB_VIDEO VIDEOIDLE 0
REM powercfg /setdcvalueindex %powerPlanGuid% SUB_VIDEO VIDEOIDLE 0

:: Disable USB energy savings (useful when a KVM is used to get faster peripherals switch) ::
:: Might be needed; leaving it off for now until proper tests are performed in w11

:: No restart required ::