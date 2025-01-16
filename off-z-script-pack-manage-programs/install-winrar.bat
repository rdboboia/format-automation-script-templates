:: Set title and banner
call set-title-and-banner "WinRAR"

:: Install
winget install --exact --id RARLab.WinRAR

:: Check error level
call check-winget-error-level