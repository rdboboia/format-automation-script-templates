:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable Windows GameBar (DVR)"

:: Registry folder paths ::
set gameConfigStorePath="HKCU\System\GameConfigStore"
set gameDvrPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR"

:: Modify registry to apply changes ::
reg add %gameConfigStorePath% /v GameDVR_FSEBehavior /t REG_DWORD /d 2 /f
reg add %gameConfigStorePath% /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add %gameConfigStorePath% /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 1 /f
reg add %gameConfigStorePath% /v GameDVR_EFSEFeatureFlags /t REG_DWORD /d 0 /f

reg add %gameDvrPath% /v AllowGameDVR /t REG_DWORD /d 0 /f

:: Restar required ::
call %utilsPath%\restart-manager