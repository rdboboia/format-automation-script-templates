:: When an application crashes, it stops responding and we have to end task it manually through the task manager.
:: By this tweak one can automatically close any application that has stopped responding.

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows Desktop - Auto end non responding apps"

:: Registry folder paths.
set desktopPath="HKCU\Control Panel\Desktop"

:: Changes registry value.
reg add %desktopPath% /v AutoEndTasks /t REG_SZ /d 1 /f

:: Requires restart.
call %utilsPath%\restart-manager