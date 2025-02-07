@echo off

:: Close apps before updating
choice /c yn /m "Send close signal to some apps before updating?"
if %errorlevel%==1 (
	taskkill /IM HWiNFO64.EXE
	taskkill /IM MSIAfterburner.exe
)

:: Update apps
winget update --all