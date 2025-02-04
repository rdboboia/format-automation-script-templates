:: Adds a new option when right clicking on a program on the taskbar to end the task (force kill).

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows taskbar - Enable end task button"

:: Change registry to apply changes
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" /v TaskbarEndTask /t REG_DWORD /d 1 /f

:: No restart required.