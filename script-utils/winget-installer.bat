:: Set title and banner.
call %utilsPath%\set-title-and-banner "%~1"

:: Load args.
set scriptName=%~3

:: Check if the script name argument is provided (for backwards compatibility).
if "%scriptName%"=="" (
	goto askToInstall
)

:: Check if is an optional script.
if not %scriptName:~0,8%==optional (
	goto install
)

:: Check if install is desired ::
:askToInstall
choice /c yn

:: Check decision ::
if not %errorlevel%==1 (
	echo Installation skipped.
	goto end
)

:: Install ::
:install
winget install --exact --id "%~2"

:end