:: Disables Windows Error Reporing ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable Windows Error Reporting"

:: Changes the registry to disable Windows Update Delivery Optimization ::
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v fAllowToGetHelp /t REG_DWORD /d 0 /f

:: Requires restart ::
call %utilsPath%\restart-manager