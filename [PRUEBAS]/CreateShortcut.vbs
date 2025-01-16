Set oWS = WScript.CreateObject("WScript.Shell") 
sLinkFile = "C:\Users\RDB_DEV\Desktop\MyApp.lnk" 
Set oLink = oWS.CreateShortcut(sLinkFile) 
oLink.TargetPath = "C:\MyApp\MyApp.bat" 
oLink.WorkingDirectory = "C:\MyApp" 
oLink.Description = "My Application" 
oLink.IconLocation = "C:\Windows\System32\shell32.dll, 27" 
oLink.Save 
