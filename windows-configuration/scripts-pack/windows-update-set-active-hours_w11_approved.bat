:: Set title and banner
call set-title-and-banner "Windows Update - Set Active Hours"

:: Registry folder paths
set wupdatePath="HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings"

:: Changes registry active hour range
reg add %wupdatePath% /v ActiveHoursEnd /t REG_DWORD /d 1 /f
reg add %wupdatePath% /v ActiveHoursStart /t REG_DWORD /d 7 /f

:: Changes registry smart state (enables manual active hour schedule)
reg add %wupdatePath% /v SmartActiveHoursState /t REG_DWORD /d 0 /f

:: Changes registry active hour range
reg add %wupdatePath% /v UserChoiceActiveHoursEnd /t REG_DWORD /d 1 /f
reg add %wupdatePath% /v UserChoiceActiveHoursStart /t REG_DWORD /d 7 /f

:: Sets the restart required flag
set restartRequired=1