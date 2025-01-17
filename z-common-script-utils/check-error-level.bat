:: TODO: have only 1 general method

:: Load arguments ::
set checkErrorArgs=%~1



:: Select logic for arguments ::
if [%checkErrorArgs%]==[] (goto default)
if %checkErrorArgs%==tempFolder (goto manageTempFolder)
if %checkErrorArgs%==winget (goto manageWinget)
goto default



:: Temp folder error checking ::
:manageTempFolder
if %errorlevel%==0 (
	color 0a
	echo OK :D
) else (
	color 0c
	echo There was an error.
	pause
)
goto end



:: Winget error checking ::
:: -1978335189 - already installeed and no updates available
:: -1978335212 - package not found (already uninstalled)
:manageWinget
if not %errorlevel%==0 if not %errorlevel%==-1978335189 if not %errorlevel%==-1978335212 (
	color 0c
	set allScriptsOk=0
) else (
	color 0a
)
goto end



:: Default error checking ::
:default
if not %errorlevel%==0 (
	color 0c
	set allScriptsOk=0
) else (
	color 0a
)
goto end



:: Script end ::
:end