:: Disables many windows telemetry features.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows Debloat - Disable Telemetry and other privacy optimized settings"

:: Disable telemetry tasks.
schtasks /change /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /change /tn "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /change /tn "Microsoft\Windows\Feedback\Siuf\DmClient" /disable
schtasks /change /tn "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable
schtasks /change /tn "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\MareBackup" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable
schtasks /change /tn "Microsoft\Windows\Maps\MapsUpdateTask" /disable

:: Registry folder paths.
set cvDataCollectionPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
set wDataCollectionPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
set contentDevManPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
set siufRulesPath="HKCU\SOFTWARE\Microsoft\Siuf\Rules"
set wCloudContentPath="HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
set wAdsInfoPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo"
set operationStatusManPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager"
set explorerAdvancedPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
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

:: Disable telemetry data collection.
reg add %cvDataCollectionPath% /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add %wDataCollectionPath% /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add %wDataCollectionPath% /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f
reg add %siufRulesPath% /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f
reg add %wCloudContentPath% /v DisableTailoredExperiencesWithDiagnosticData /t REG_DWORD /d 1 /f
reg add %wAdsInfoPath% /v DisabledByGroupPolicy /t REG_DWORD /d 1 /f

:: Disable "recommended" app installs.
reg add %contentDevManPath% /v ContentDeliveryAllowed /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v OemPreInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v PreInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v PreInstalledAppsEverEnabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v SubscribedContent-338387Enabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v SubscribedContent-353698Enabled /t REG_DWORD /d 0 /f
reg add %contentDevManPath% /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f


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
call %utilsPath%\restart-manager