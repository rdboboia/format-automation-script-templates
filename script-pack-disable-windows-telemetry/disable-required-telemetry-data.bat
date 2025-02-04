:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable required telemetry data"

:: Registry folder paths ::
set requiredTelemetryPath="HKLM\Software\Policies\Microsoft\Windows\DataCollection"

:: AllowTelemetry DWORD Possible Options
:: 0 = Security (Enterprise and Education editions only)
:: 1 = Basic
:: 2 = Enhanced
:: 3 = Full (Recommended)

:: Insert registry key to disable required data telemetry ::
reg add %requiredTelemetryPath% /v AllowTelemetry /t REG_DWORD /d 0 /f

:: Restar required ::
call %utilsPath%\restart-manager