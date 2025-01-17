:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Spotlight - Remove desktop icon"

:: Registry folder paths ::
set desktopPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"

:: Changes registry value to remove "More about this picture" desktop icon ::
reg add %desktopPath% /v {2cc5ca98-6485-489a-920e-b3e88a6ccce3} /t REG_DWORD /d 1 /f

:: Requires restart ::
call %utilsPath%\restart-manager