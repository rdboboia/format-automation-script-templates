:: Check if the configuration change is desired ::
choice /c yn

:: Call powershell script to disable and delete pagefile ::
if %errorlevel%==1 (
	powershell -noexit -ExecutionPolicy Bypass -file "disable-and-delete-pagefile-powershell-script.ps1"
)