:: Load arguments ::
set restartManagerArgs=%~1

:: Switch ::
if "%restartManagerArgs%"=="" (
	goto defaultSet
) else (
	goto check
)

:defaultSet
:: Restart required ::
set restartRequired=1
goto end

:check
:: Check if restart is required ::
echo Checking if restart is required...
if not "%restartRequired%"=="1" (
	echo No restart required.
	goto end
) else (
	echo Restart required. No more scripts will be executed for now.
	echo Press any key to restart now or close this window and manually restart.
	pause > nul
	echo This window will now be closed.
	pause > nul
	echo RESTART HERE! NOW!
	pause > nul
	exit
)

:end