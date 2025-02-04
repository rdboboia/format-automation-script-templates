:: Creates an environment variable to tell powershell to not send telemetry data (opt out).

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "PowerShell - Disable telemetry"

:: Registry folder paths ::
setx POWERSHELL_TELEMETRY_OPTOUT "1" /m

:: Restar required ::
call %utilsPath%\restart-manager