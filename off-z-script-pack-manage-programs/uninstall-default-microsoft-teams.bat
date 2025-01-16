:: Set title and banner
call set-title-and-banner "Microsoft Teams - Uninstall"

:: Install
winget install --exact --id Microsoft.Teams

:: Check error level
call check-winget-error-level