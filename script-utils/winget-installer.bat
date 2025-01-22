:: Set title and banner ::
call %utilsPath%\set-title-and-banner "%~1"

:: Install ::
winget install --exact --id "%~2"