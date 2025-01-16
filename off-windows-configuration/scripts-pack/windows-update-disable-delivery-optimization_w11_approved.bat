:: Change the default Windows Update Delivery Optimization from share with the local network to disabled.

:: Sets the title of the window
title Change Windows Update Delivery Optimization

:: Changes the registry to disable Windows Update Delivery Optimization.
reg add "HKEY_USERS\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v DownloadMode /t REG_DWORD /d 0 /f

:: No restart required.