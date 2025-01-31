:: Check if the configuration change is desired ::
choice /c yn

:: Call powershell script to disable and delete pagefile ::
if %errorlevel%==1 (
	if "%packExecutorArgs%"=="" (
		powershell -ExecutionPolicy Bypass -file "disable-and-delete-pagefile-powershell-script.ps1"
	) else (
		powershell -ExecutionPolicy Bypass -file "%packExecutorArgs%\disable-and-delete-pagefile-powershell-script.ps1"
	)
)