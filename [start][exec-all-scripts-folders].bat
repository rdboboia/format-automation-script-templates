:: Disable command echo ::
@echo off

:: Changing execution path just in case; the implementation shouldn't depend on this ::
cd /d "%~dp0"

:: Variables ::
set scriptFolderPath="%~dp0"
set utilsPath=%scriptFolderPath%script-utils
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
	call %utilsPath%\restart-manager check
	echo ======================================================================
	call %utilsPath%\print-spacer 6
	call %utilsPath%\print-filler 6
	call %utilsPath%\print-spacer 6
	)
)

pause