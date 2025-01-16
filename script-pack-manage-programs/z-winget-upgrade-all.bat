:: Set title and banner
call set-title-and-banner "Winget - Update ALL"

:: Install
winget upgrade --all

:: Check error level
call check-winget-error-level