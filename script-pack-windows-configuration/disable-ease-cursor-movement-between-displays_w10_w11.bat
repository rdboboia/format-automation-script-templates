:: Set title and banner.
call %utilsPath%\set-title-and-banner "Display - Disable ease cursos movement between displays"

:: Registry folder paths.
set cursorsPath="HKCU\Control Panel\Cursors"

:: Change registry to apply changes.
reg add %cursorsPath% /v CursorDeadzoneJumpingSetting /t REG_DWORD /d 0 /f

:: Requires restart.
call %utilsPath%\restart-manager