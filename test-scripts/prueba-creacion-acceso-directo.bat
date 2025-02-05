@echo off
:: cd c:\MyApp
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\MyApp.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\MyApp\MyApp.bat" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "C:\MyApp" >> CreateShortcut.vbs
echo oLink.Description = "My Application" >> CreateShortcut.vbs
echo oLink.IconLocation = "C:\Windows\System32\shell32.dll, 27" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
::del CreateShortcut.vbs