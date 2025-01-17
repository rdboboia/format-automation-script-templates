:: Winget error checking ::
:: -1978335189 - already installeed and no updates available
:: -1978335212 - package not found (already uninstalled)

:: Check if error level is not any of the OK values ::
if not %errorlevel%==0 if not %errorlevel%==-1978335189 if not %errorlevel%==-1978335212 if not %errorlevel%==1062 (
	color 0c
	set allScriptsOk=0
) else (
	color 0a
)