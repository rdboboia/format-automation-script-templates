:: Load arguments ::
set args=%~1

:: Select logic for arguments ::
if [%args%]==[] (goto default)
if %args%==tempFolder (goto manageTempFolder)
if %args%==winget (goto manageWinget)
if %args%==packExecutor (goto packExecutor)
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
:manageWinget
if not %errorlevel%==0 if not %errorlevel%==-1978335189 (
	color 0c
) else (
	color 0a
)
goto end

:: Default error checking ::
:default
if not %errorlevel%==0 (
	color 0c
) else (
	color 0a
)
goto end

:packExecutor
if not %errorlevel%==0 (
	set allScriptsOk=0
)

:: Script end ::
:end