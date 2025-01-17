:: Vars ::
set scriptPackFolderName=N_A
for %%f in ("%packExecutorArgs%") do (
	set scriptPackFolderName=%%~nxf
)
set executionLogPath=%utilsPath%\fully-executed-script-packs-log
set skipPackExecution=1

:: Go to the desired method ::
goto %~1

:check
:: Check if a file matches the expected file name ::
for %%f in (%executionLogPath%\*) do (
	if %scriptPackFolderName%==%%~nxf (
		echo Script pack already fully executed.
		goto askForRetry
	)
)
:: No matches found ::
set skipPackExecution=0
goto end

:: Ask user if a retry is desired ::
:askForRetry
echo Would you like to retry the execution?
choice /c yn
echo %errorlevel%

if %errorlevel%==1 (
	set skipPackExecution=0
	
	:: Removing log file ::
	del %executionLogPath%\%scriptPackFolderName%
)
goto end

:storeSuccess
type NUL > %executionLogPath%\%scriptPackFolderName%

:end