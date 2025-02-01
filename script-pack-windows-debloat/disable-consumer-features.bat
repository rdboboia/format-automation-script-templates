:: Stop Windows from automatically installing apps from the app store ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Debloat - Disable Consumer Features"

:: Registry folder paths ::
set consumerFeaturesPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent"

:: Disables sticky keys (might affect multiple settings) ::
reg add %consumerFeaturesPath% /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f

:: Requires restart ::
call %utilsPath%\restart-manager