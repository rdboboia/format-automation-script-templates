:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Logon - Enable verbose messages"

:: Registry folder paths ::
set systemPoliciesPath="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"

:: Show file extensions ::
reg add %systemPoliciesPath% /v VerboseStatus /t REG_DWORD /d 1 /f

:: Requires restart ::
call %utilsPath%\restart-manager