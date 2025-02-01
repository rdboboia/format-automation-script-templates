:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Desktop - Enable legacy right click menu"

:: Changes registry value ::
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

:: Requires restart ::
call %utilsPath%\restart-manager