@echo off

:: Enable Hyper-V feature
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V

:: Restart required!