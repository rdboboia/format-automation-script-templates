:: Disables many windows telemetry features.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows Debloat - Disable Telemetry and other privacy optimized settings"

:: Registry folder paths.
set operationStatusManPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager"
set explorerPeoplePath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People"
set fileSystemPath="HKLM\SYSTEM\CurrentControlSet\Control\FileSystem"
set driverSearchingPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching"
set systemProfilePath="HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile"
set memManPath="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management"
set nduPath="HKLM\SYSTEM\ControlSet001\Services\Ndu"
set controlPanelMousePath="HKCU\Control Panel\Mouse"
set lanmanServerParamsPath="HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters"
set explorerPoliciesPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set userProfEngPath="HKCU\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement"

:: MISC (disabled due to missing funcitonality information or because the set value is already the default value).

:: Functionality not clear.
:: reg add %operationStatusManPath% /v EnthusiastMode /t REG_DWORD /d 1 /f

:: Functionality not clear.
:: reg add %explorerPeoplePath% /v PeopleBand /t REG_DWORD /d 0 /f

:: Not using it unless it's strictly required.
:: reg add %fileSystemPath% /v LongPathsEnabled /t REG_DWORD /d 1 /f

:: Functionality not clear.
:: reg add %driverSearchingPath% /v SearchOrderConfig /t REG_DWORD /d 1 /f

:: Functionality not clear.
:: reg add %systemProfilePath% /v SystemResponsiveness /t REG_DWORD /d 0 /f
:: reg add %systemProfilePath% /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f

:: Default value (at least with pagination disabled).
:: reg add %memManPath% /v ClearPageFileAtShutdown /t REG_DWORD /d 0 /f

:: Default value.
:: reg add %nduPath% /v Start /t REG_DWORD /d 2 /f

:: Default value.
:: reg add %controlPanelMousePath% /v MouseHoverTime /t REG_SZ /d 400 /f

:: Functionality not clear.
:: reg add %lanmanServerParamsPath% /v IRPStackSize /t REG_DWORD /d 30 /f

:: Functionality not clear.
:: reg add %explorerPoliciesPath% /v HideSCAMeetNow /t REG_DWORD /d 1 /f

:: Not sure if desired for by users.
:: reg add %userProfEngPath% /v ScoobeSystemSettingEnabled /t REG_DWORD /d 0 /f

:: Requires restart.
:: call %utilsPath%\restart-manager