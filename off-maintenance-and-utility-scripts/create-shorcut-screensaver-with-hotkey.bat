@echo off

:vars
set shortcutName=ScreenSaver
set shortcutDescription=ScreenSaver
set targetPath=C:\Windows\System32
set targetFile=Ribbons.scr
set targetFilePath=%targetPath%\%targetFile%

:: Leave empty if no hoykey is desired.
set hotKey=CTRL+ALT+S

:createVbsScript
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\%shortcutName%.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%targetFilePath%" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%targetPath%" >> CreateShortcut.vbs
echo oLink.Description = "%shortcutDescription%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%SystemRoot%\System32\PhotoScreensaver.scr" >> CreateShortcut.vbs
echo oLink.HotKey = "%hotKey%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs

:executeVbsScript
cscript CreateShortcut.vbs

:removeVbsScript
del CreateShortcut.vbs