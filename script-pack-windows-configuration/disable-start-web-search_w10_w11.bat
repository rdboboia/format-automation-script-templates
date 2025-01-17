:: Disables windows start menu web search which can improve search performance and precision.

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Web Search - Disable"

:: Disables web search
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

:: Requires restart
call %utilsPath%\restart-manager