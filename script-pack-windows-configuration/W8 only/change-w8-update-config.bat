:: Changes the Windows Updater configuration, setting the Updater to only search but not download nor install automatically, as well as enabling the recommended updates.

:: Possible settings:
:: 		0 Let the local administrator to choose the settings.
:: 		1 Don't check.
:: 		2 Check but don't download nor install.
:: 		3 Check, download but don't install.
:: 		4 Download and install automatically.

:: Sets the title of the window.
title Windows Update configuration

:: Changes the Windows Updater to only search but not download nor install.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v CachedAUOptions /t REG_DWORD /d 2 /f

:: Enables the recommended updates.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v IncludeRecommendedUpdates /t REG_DWORD /d 1 /f