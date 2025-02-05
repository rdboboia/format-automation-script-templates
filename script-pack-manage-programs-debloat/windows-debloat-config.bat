:: Debloats windows by removing some app preinstall configuration.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows Debloat"

:: Registry folder paths.
set contentDevManPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"

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

:: Requires restart.
call %utilsPath%\restart-manager