:: Set title and banner.
call %utilsPath%\set-title-and-banner "Install shutdown scripts"

:: Vars.
set scriptsToInstallPath=%packExecutorArgs%\scripts-to-install
set shutdownScriptsInstallationPath="C:\Program Files\fast-shutdown-scripts"

:: Install all scripts inside script folder.
for %%f in (%scriptsToInstallPath%\*.bat) do (
	copy "%%f" %shutdownScriptsInstallationPath%\%%~nxf
)