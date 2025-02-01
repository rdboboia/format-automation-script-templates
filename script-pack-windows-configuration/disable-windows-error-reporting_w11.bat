:: Disables Windows Error Reporing ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable Windows Error Reporting"

:: Changes the registry to disable Windows Update Delivery Optimization ::
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f

:: Requires restart ::
call %utilsPath%\restart-manager