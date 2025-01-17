:: Vars ::
set serviceName=DiagTrack

:: Disable auto startup ::
sc config %serviceName% start=demand > nul

:: Stop service ::
sc stop %serviceName% > nul 2>nul

:: Restart required ::
set restartRequired=1