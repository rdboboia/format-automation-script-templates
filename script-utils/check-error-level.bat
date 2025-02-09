:: Winget error checking ::
:: 1 and 2 for choices
:: 3010 - reject windows feature install restart
:: -1978335189 - already installeed and no updates available
:: -1978335212 - package not found (already uninstalled)


:: Check if error level is not any of the OK values ::
echo %errorlevel%
if not %errorlevel%==0 if not %errorlevel%==1 if not %errorlevel%==2 if not %errorlevel%==3010 if not %errorlevel%==-1978335189 if not %errorlevel%==-1978335212 (
	set allScriptsOk=0
)