:: Check if the current system is my VM (change this variable to match your case) ::
if "%computername%"=="HYPER-V-VM-W11" (goto end)

:: Enable Hyper-V feature ::
DISM /Online /Enable-Feature /All /FeatureName:Containers-DisposableClientVM

:: Requires restart ::
call %utilsPath%\restart-manager

:end