:: Enable Hyper-V feature ::
DISM /Online /Enable-Feature /All /FeatureName:Containers-DisposableClientVM

:: Requires restart ::
call %utilsPath%\restart-manager