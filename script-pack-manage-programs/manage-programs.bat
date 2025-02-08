:: Set title and banner.
call %utilsPath%\set-title-and-banner "Install / Uninstall programs"

:: Install all scripts inside script folder.
setlocal enabledelayedexpansion
for /D %%b in (%packExecutorArgs%\*) do (
	echo Found program folder: %%~nxb
	choice /c yn /m "Execute this folder?"
	
	if !errorlevel!==1 (
		call %utilsPath%\script-pack-executor "%%b"
	) else (
		echo Skipping program folder.
	)
	
	call %utilsPath%\print-spacer 6
)
endlocal