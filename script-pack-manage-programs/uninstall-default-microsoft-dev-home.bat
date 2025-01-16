:: Set title and banner
call set-title-and-banner "Microsoft Dev Home - Uninstall"

:: Install
winget install --exact --id Microsoft.DevHome

:: Check error level
call check-winget-error-level