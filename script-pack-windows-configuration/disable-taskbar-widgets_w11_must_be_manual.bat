:: Disable Windows 11's taskbar widgets.

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Taskbar - Disable Widgets"

:: Changes the registry to disable taskbar widgets.
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f

echo CAN'T CHANGE THIS AUTOMATICALLY DUE TO PERMISSION RESTRICTIONS.
echo The program will pause and wait for you tu manually disable this.
echo You can find this setting in the following path:
echo "Start > Configuration > Customization > Task Bar > Widgets > TOGGLE OFF"
echo Press any key inside this window's focus area after you're done.
pause

:: No restart required.