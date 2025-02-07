:: Disables command echo.
@echo off

:: Creates (if not already exists) the system's temp folder and hides it (to avoid accidental deletion).

:: Set title and banner.
call %utilsPath%\set-title-and-banner "TEMP folder - Create and Hide"

:: Configurable variables.
set tempFolderPath="%temp%"
set hiddenFolderDepth=%tempFolderPath%

:: Check if the folder exists.
echo Checking if the TEMP folder exists...
if not exist %tempFolderPath% (
	echo Creating folder...
	MD %tempFolderPath%
) else (
	echo The folder already exists.
)

:: Hide folder to avoid accidental deletion.
echo Hidding folder...
ATTRIB +S +H %hiddenFolderDepth%