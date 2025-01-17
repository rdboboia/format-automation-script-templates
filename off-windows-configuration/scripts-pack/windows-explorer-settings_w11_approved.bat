:: Sets the title of the window
title Explorer Settings

:: Registry folder paths
set explorerPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

:: Show file extensions
reg add %explorerPath% /v HideFileExt /t REG_DWORD /d 0 /f

:: Show system protected files (will be shown when "Hidden" is disabled; more files than by only disabling "Hidden")
reg add %explorerPath% /v ShowSuperHidden /t REG_DWORD /d 1 /f

:: Don't show hidden files (this might be helpful after the previous changes; there are a lot of system protected files)
reg add %explorerPath% /v Hidden /t REG_DWORD /d 2 /f

:: Show encrypted and compressed files with a different color.
reg add %explorerPath% /v ShowEncryptCompressedColor /t REG_DWORD /d 1 /f

:: Does not require restart. Changes are applied immediately (open windows must be refreshed).