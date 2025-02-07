:: Set title and banner.
call %utilsPath%\set-title-and-banner "Install startup scripts"

:: Vars.
set scriptsToInstallPath=%packExecutorArgs%\scripts-to-install
set startupPath="C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

:: Install all scripts inside script folder.
for %%f in (%scriptsToInstallPath%\*.bat) do (
	echo Copying %%f to startup folder...
	copy "%%f" "%startupPath%\%%~f"
)