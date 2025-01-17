:: Sets the title of the window ::
title Windows snapping assist settings

:: Registry folder paths ::
set snapAssistPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

:: Show file extensions
reg add %snapAssistPath% /v SnapAssist /t REG_DWORD /d 0 /f

:: Requires restart
call %utilsPath%\restart-manager