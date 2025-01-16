:: Check error level ::
if %errorlevel%==0 (
	color 0a
	echo OK :D
) else (
	color 0c
	echo There was an error.
	pause
)