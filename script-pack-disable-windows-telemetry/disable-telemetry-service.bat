:: Vars ::
set serviceName=DiagTrack

:: Stop service ::
sc stop %serviceName% > nul 2>nul

:: Disable auto startup ::
sc config %serviceName% start=demand > nul

:: Restart required ::
call %utilsPath%\restart-manager