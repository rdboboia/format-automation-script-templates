:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable location tracking"

:: Registry folder paths ::
set consentStoreLocationPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location"
set sensorOverridesPath="HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}"
set lfsvcConfigPath="HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration"
set mapsPath="HKLM\SYSTEM\Maps"

:: Modify registry to apply changes ::
reg add %consentStoreLocationPath% /v Value /t REG_SZ /d Deny /f
reg add %sensorOverridesPath% /v SensorPermissionState /t REG_DWORD /d 0 /f
reg add %lfsvcConfigPath% /v Status /t REG_DWORD /d 0 /f
reg add %mapsPath% /v AutoUpdateEnabled /t REG_DWORD /d 0 /f

:: Restar required ::
call %utilsPath%\restart-manager