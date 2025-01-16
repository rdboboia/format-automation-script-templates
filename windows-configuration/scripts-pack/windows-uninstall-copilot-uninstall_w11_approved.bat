:: Set title and banner
call set-title-and-banner "Windows Copilot - Uninstall"

:: Uninstall
winget uninstall --exact --id 9NHT9RB2F4HD

:: Check error level
call check-winget-uninstall-error-level