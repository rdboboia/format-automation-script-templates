:: Set title and banner ::
call %utilsPath%\set-title-and-banner %~1

:: Check if install is desired ::
choice /c yn

:: Check decision ::
if not %errorlevel%==1 (
	echo Installation skipped.
	goto end
)

:: Install ::
winget install --exact --id %~2

:end