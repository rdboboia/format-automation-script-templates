:: Removes the windows task view from the task bar.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows taskbar task view - Disable"

:: Change registry to apply changes
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f

:: No restart required.