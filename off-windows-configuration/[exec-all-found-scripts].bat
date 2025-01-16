:: Disable command echo
@echo off

:: Enabled advanced variable management
setlocal ENABLEDELAYEDEXPANSION

:: Variables
set scriptFolderPath="C:\Users\RDB_DEV\Desktop\[PFS]\Windows configuration"
set restartRequired=0

:: Iterate over every script found in defined folder
for %%f in (%scriptFolderPath%\scripts-pack\*.bat) do (
	:: Change window title
	title Program installer
	
	:: Script execution
	echo ======================================================================
	echo Installer loop
	echo ----------------------------------------------------------------------
	echo Found script: %%f
	echo Calling %%f...
	call "%%f"
	echo ======================================================================
	call print-spacer
)

:: Check if a system restart is required
if %restartRequired%==1 (
	echo Some settings need a restart to be applied.
	echo Close this window to restart manually later.
	echo Press any key to schedule a restart now.
	pause > nul
	shutdown /R /T 5 /C "Scheduled restart to apply changes (restart in 5 seconds)"
)