:: Disables autoplay popup when connecting an external device.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows Autoplay - Disable"

:: Reg path.
set autoplayHanlderPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers"

:: Change registry to apply changes.
reg add %autoplayHanlderPath% /v DisableAutoplay /t REG_DWORD /d 1 /f

:: Requires restart.
call %utilsPath%\restart-manager