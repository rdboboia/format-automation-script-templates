:: Disables the windows search bar from the task bar.

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows taskbar search bar - Disable"

:: Changes the registry to disable Windows Update Delivery Optimization.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f

:: Requires restart
call %utilsPath%\restart-manager