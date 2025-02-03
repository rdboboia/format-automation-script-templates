:: Disables many windows telemetry features.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows Debloat - Disable Telemetry features and services"

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
set siufRulesPath="HKCU\SOFTWARE\Microsoft\Siuf\Rules"
set wCloudContentPath="HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
set wAdsInfoPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo"

:: Disable telemetry data collection.
reg add %cvDataCollectionPath% /v AllowTelemetry /t REG_DWORD /d 0 /f

:: AllowTelemetry DWORD Possible Options
:: 0 = Security (Enterprise and Education editions only)
:: 1 = Basic
:: 2 = Enhanced
:: 3 = Full (Recommended)
:: Disabled all telemetry data recollection.
reg add %wDataCollectionPath% /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add %wDataCollectionPath% /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f

:: Sets the telemetry frequency to never.
reg add %siufRulesPath% /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f

reg add %wCloudContentPath% /v DisableTailoredExperiencesWithDiagnosticData /t REG_DWORD /d 1 /f

reg add %wAdsInfoPath% /v DisabledByGroupPolicy /t REG_DWORD /d 1 /f

:: Requires restart.
call %utilsPath%\restart-manager