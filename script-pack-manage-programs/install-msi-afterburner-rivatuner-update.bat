:: Set title and banner
call set-title-and-banner "Rivatuner Statistics Server"

:: Install
winget install --exact --id Guru3D.RTSS

:: Check error level
call check-winget-error-level