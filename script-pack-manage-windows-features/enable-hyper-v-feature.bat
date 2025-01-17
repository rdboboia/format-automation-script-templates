:: Enable Hyper-V feature ::
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V

:: Requires restart ::
call %utilsPath%\restart-manager