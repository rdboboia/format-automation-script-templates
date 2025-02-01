:: Disables many windows telemetry features ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Debloat - Disable Telemetry"

:: Disable telemetry tasks ::
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

:: Registry folder paths ::
set cvDataCollectionPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
set wDataCollectionPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
set contentDevManPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
set siufRulesPath="HKCU\SOFTWARE\Microsoft\Siuf\Rules"
set wCloudContentPath="HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
set wAdsInfoPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo"
set wErrorReportingPath="HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting"
set deliveryOptimizationPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config"
set remoteAssistancePath="HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance"
set operationStatusManPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager"
set explorerAdvancedPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
set explorerPeoplePath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People"
set fileSystemPath="HKLM\SYSTEM\CurrentControlSet\Control\FileSystem"
set driverSearchingPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching"
set systemProfilePath="HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile"
set desktopPath="HKCU\Control Panel\Desktop"
set memManPath="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management"
set nduPath="HKLM\SYSTEM\ControlSet001\Services\Ndu"
set controlPanelMousePath="HKCU\Control Panel\Mouse"
set lanmanServerParamsPath="HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters"
set windowsFeedsPath="HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds"
set wFeedsPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds"
set explorerPoliciesPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set userProfEngPath="HKCU\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement"

:: Disable telemetry services registry ::



:: Requires restart ::
call %utilsPath%\restart-manager