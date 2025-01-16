:: Load arguments ::
set args=%~1

:: Iterate over every script found in defined folder ::
for %%f in (%args%\*.bat) do (
	
	:: Change window title ::
	title Script executor
	
	:: Script execution ::
	echo ======================================================================
	echo Executor loop
	echo ======================================================================
	echo Calling script: %%~f
	echo ----------------------------------------------------------------------
	:: call "%%f"
	echo ----------------------------------------------------------------------
	echo Checking error level...
	call %utilsPath%\check-error-level
	timeout /t 5 /nobreak > nul
	echo ======================================================================
	call %utilsPath%\print-spacer 6
)
