@echo off

:: Close apps before updating
choice /c yn /m "Send close signal to some apps before updating?"
if %errorlevel%==1 (
	taskkill /IM HWiNFO64.EXE
	taskkill /IM MSIAfterburner.exe
)

:: Update apps
winget update --all

:: Recommend a restart
echo ===================================================================
echo It is recommended to restart the system if all updates were installed.
echo Some updates might take more than 1 try (if the app did not close on time).
echo Confirm that are updates were successfully installed and restart the system.
pause