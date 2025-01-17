:: Sets the title of the window ::
title Telemetry frequency - Never

:: Registry folder paths ::
set telemetryFrequencyPath="HKCU\Software\Microsoft\Siuf\Rules"

:: Modify registry to apply changes ::
reg add %telemetryFrequencyPath% /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f

:: Restar required ::
set restartRequired=1