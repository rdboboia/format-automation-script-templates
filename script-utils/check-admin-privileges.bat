:: Test if command is lanuched as admin ::
net session > nul 2>nul

:: Check if the command succeeded ::
if not %errorlevel%==0 (
	color 06
	echo Admin privileges not granted.
) else (
	color 0a
	echo Admin privileges OK.
)