:: Check winget error code
echo !errorlevel!
if not !errorlevel!==0 if not !errorlevel!==-1978335212 (
	color 0c
) else (
	color 0a
)