@echo off

:vars
set shortcutName=[EzBackup]
set shortcutDescription=EZ Backup
set targetPath=R:\[TOOLS]\[EzBackup]
set targetFile=[EzBackup] 1 click 4 all.bat
set targetFilePath=%targetPath%\%targetFile%

:: cd c:\MyApp
:createVbsScript
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\%shortcutName%.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%targetFilePath%" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%targetPath%" >> CreateShortcut.vbs
echo oLink.Description = "%shortcutDescription%" >> CreateShortcut.vbs
echo oLink.IconLocation = "C:\Windows\System32\shell32.dll, 239" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs

:executeVbsScript
cscript CreateShortcut.vbs

:removeVbsScript
del CreateShortcut.vbs