:: Change mouse settings. It sets the sensitivity to Window's default sensitivity and disables mouse acceleration (precision as described by Windows).

:: Sets the title of the window
title Mouse configuration setup

:: Registry folder paths
set mousePath="HKCU\Control Panel\Mouse"

:: Applies the default mouse sensitivity (10)
reg add %mousePath% /v MouseSensitivity /t REG_SZ /d 10 /f

:: Disables mouse acceleration
reg add %mousePath% /v MouseSpeed /t REG_SZ /d 0 /f
reg add %mousePath% /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add %mousePath% /v MouseThreshold2 /t REG_SZ /d 0 /f

:: Requires restart
call %utilsPath%\restart-manager