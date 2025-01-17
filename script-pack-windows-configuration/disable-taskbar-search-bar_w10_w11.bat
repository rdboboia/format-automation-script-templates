:: Disables the windows search bar from the task bar.

:: Sets the title of the window
title Disable task bar search bar

:: Changes the registry to disable Windows Update Delivery Optimization.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f

:: Requires restart
call %utilsPath%\restart-manager