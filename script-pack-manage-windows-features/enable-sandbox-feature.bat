:: Call VM checker.
call %utilsPath%\check-if-system-is-vm

:: Check if the current system is a VM.
if %vmCheckerReturnValue%==VM (
	echo System is detected as a VM. Skipping Windows Sandbox installation.
	goto end
)

:: Enable Hyper-V feature.
DISM /Online /Enable-Feature /All /FeatureName:Containers-DisposableClientVM

:: Requires restart.
call %utilsPath%\restart-manager

:end