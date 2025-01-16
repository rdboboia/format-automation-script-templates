cd /d "%~dp0"

:: Disable command echo ::
@echo off

:: Variables ::
set scriptFolderPath="%~dp0"
set utilsPath=%scriptFolderPath%z-common-script-utils
set restartRequired=0

:: Iterate over every script found in defined folder ::
for /D %%f in (%scriptFolderPath%script-pack-*) do (

	:: Change window title ::
	title Script executor
	
	:: Script execution ::
	echo ======================================================================
	echo Folder executor loop
	echo ----------------------------------------------------------------------
	echo Found folder: %%~nxf
	call %utilsPath%\script-pack-executor "%%f"
	echo ----------------------------------------------------------------------
	echo Checking if restart is required...
	if %restartRequired%==1 (
		echo Restart required. No more scripts will be executed for now.
		echo Press any key to restart now.
		pause > nul
	) else (
		echo No restart required. Proceeding with the next pack...
		echo ======================================================================
		call %utilsPath%\print-spacer 6
		call %utilsPath%\print-filler 6
		call %utilsPath%\print-spacer 6
	)
)
pause
popd
:: shutdown /R /T 5 /C "Scheduled restart to apply changes (restart in 5 seconds)"