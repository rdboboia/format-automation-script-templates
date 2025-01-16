:: Disable command echo
@echo off

:: Variables
set scriptFolderPath="C:\Users\RDB_DEV\Desktop\[PFS]\Maintenance and utility scripts"
set scriptPackFolder="startup-scripts-pack"
set restartRequired=0

echo %CD%

:: Iterate over every script found in defined folder
for %%f in (%scriptFolderPath%\%scriptPackFolder%\*.bat) do (
	:: Change window title
	title Program installer
	
	:: Script execution
	echo ======================================================================
	echo Executor loop
	echo ----------------------------------------------------------------------
	echo Found script: %%f
	echo Calling %%f...
	call "%%f"
	echo ----------------------------------------------------------------------
	echo Checking error level...
	call check-error-level
	echo ======================================================================
	call print-spacer 6
)
