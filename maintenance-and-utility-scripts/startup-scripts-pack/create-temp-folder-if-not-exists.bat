:: Set title and banner
call set-title-and-banner "Manage TEMP folder"

:: Configurable variables ::
set tempFolderPath="Z:\Otro\Local\Temp"
set hiddenFolderDepth="Z:\Otro"

:: Check if the folder exists ::
echo Checking if the TEMP folder exists...
if not exist %tempFolderPath% (
	
	:: Create folder ::
	echo Creating folder...
	MD %tempFolderPath%
	
	:: Hide folder to avoid accidental deletion ::
	echo Hidding folder...
	ATTRIB +S +H %hiddenFolderDepth%

) else (
	echo The folder already exists. Nothing to do.
)