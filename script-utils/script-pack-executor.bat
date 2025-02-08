:: Load arguments ::
set packExecutorArgs=%~1

:: Vars ::
set allScriptsOk=1
set skipPackExecution=0

:: Check if the script pack was already succesfully executed ::
call %utilsPath%\script-pack-execution-log-manager check
if %skipPackExecution%==1 (
	echo Skipping pack execution.
	goto end
)

:: Iterate over every script found in defined folder ::
for %%f in (%packExecutorArgs%\*.bat) do (
	
	:: Change window title ::
	title Script executor
	
	:: Script execution ::
	echo ======================================================================
	echo Executor loop
	echo ======================================================================
	echo Calling script: %%~f
	echo ----------------------------------------------------------------------
	call "%%f" %%~nxf
	echo ----------------------------------------------------------------------
	echo Checking error level...
	call %utilsPath%\check-error-level
	timeout /t 1 /nobreak > nul
	echo ======================================================================
	call %utilsPath%\print-spacer 6
)

:: Check if all script executions were OK ::
if %allScriptsOk%==1 (
	call %utilsPath%\script-pack-execution-log-manager storeSuccess
)

:end