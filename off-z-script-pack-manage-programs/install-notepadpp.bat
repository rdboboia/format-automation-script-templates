:: Set title and banner
call set-title-and-banner "Notepad++"

:: Install
winget install --exact --id Notepad++.Notepad++

:: Check error level
call check-winget-error-level