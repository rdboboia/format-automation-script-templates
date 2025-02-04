:: Enables or disables dark theme. This is set in the variables part and can be changed as desired.
:: 1 -> Light theme (default)
:: 0 -> Dark theme

:: Set title and banner.
call %utilsPath%\set-title-and-banner "Windows dark mode changer"

:: Set variables.
set desiredTheme=0

:: Registry folder paths.
set themePersonalizationPath="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"

:: Change registry to apply changes.
reg add %themePersonalizationPath% /v AppsUseLightTheme /t REG_DWORD /d %desiredTheme% /f
reg add %themePersonalizationPath% /v SystemUsesLightTheme /t REG_DWORD /d %desiredTheme% /f

:: No restart required.