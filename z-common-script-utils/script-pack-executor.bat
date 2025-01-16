:: Disable command echo ::
@echo off

:: Variables ::
set utilsRelativePath=z-common-script-utils
set scriptFolderPath="%~dp0"
set restartRequired=0

echo %CD%

:: Iterate over every script found in defined folder ::
for /D %%f in (%scriptFolderPath%script-pack-*) do (
	:: Change window title ::
	title Script executor
	
	:: Script execution ::
	echo ======================================================================
	echo Executor loop
	echo ----------------------------------------------------------------------
	echo Found script: %%~nxf
	echo Calling %%~nxf...
	:: call "%%f"
	echo ----------------------------------------------------------------------
	echo Checking error level...
	call %utilsRelativePath%\check-error-level
	echo ======================================================================
	call %utilsRelativePath%\print-spacer 6
)
