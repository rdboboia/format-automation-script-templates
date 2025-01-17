:: Sets the title of the window ::
title Disable required telemetry data

:: Registry folder paths ::
set requiredTelemetryPath="HKLM\Software\Policies\Microsoft\Windows\DataCollection"

:: Insert registry key to disable required data telemetry ::
reg add %requiredTelemetryPath% /v AllowTelemetry /t REG_DWORD /d 0 /f

:: Restar required ::
set restartRequired=1