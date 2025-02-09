:: Call VM checker.
call %utilsPath%\check-if-system-is-vm

:: Check if the current system is a VM.
if %vmCheckerReturnValue%=="VM" (
	goto end
)

:: Enable Hyper-V feature.
DISM /Online /Enable-Feature /All /FeatureName:Containers-DisposableClientVM

:: Requires restart.
call %utilsPath%\restart-manager

:end