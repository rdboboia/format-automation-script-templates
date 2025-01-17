:: Change the default Windows Update Delivery Optimization from share with the local network to disabled.

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable windows update delivery optimization"

:: Changes the registry to disable Windows Update Delivery Optimization ::
reg add "HKEY_USERS\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v DownloadMode /t REG_DWORD /d 0 /f

:: Requires restart ::
call %utilsPath%\restart-manager