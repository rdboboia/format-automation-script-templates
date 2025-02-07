:: Set title and banner.
call %utilsPath%\set-title-and-banner "Configure power button action - Turn off Screen"

:: Registry folder paths.
:: set acSettingsPath="HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\381b4222-f694-41f0-9685-ff5bb260df2e\4f971e89-eebd-4455-a8de-9e59040e7347\7648efa3-dd9c-4e3e-b566-50f929386280"

:: Show file extensions ::
:: reg add %acSettingsPath% /v ACSettingIndex /t REG_DWORD /d 0 /f

echo Can't be done automatically due to permission restrictions.
echo Manually change this (if desired) and hit a key to proceed.
pause