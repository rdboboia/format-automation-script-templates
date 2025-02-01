:: Disables the delay between hovering over a sub-menu and that menu appearing (default is 400ms) ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Desktop - Disable show menu delay"

:: Registry folder paths ::
set desktopPath="HKCU\Control Panel\Desktop"

:: Changes registry value ::
reg add %desktopPath% /v MenuShowDelay /t REG_SZ /d 0 /f

:: Requires restart ::
call %utilsPath%\restart-manager