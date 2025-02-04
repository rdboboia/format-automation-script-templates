:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable activity history"

:: Registry folder paths ::
set activityHistoryPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\System"

:: Modify registry to apply changes ::
reg add %activityHistoryPath% /v EnableActivityFeed /t REG_DWORD /d 0 /f
reg add %activityHistoryPath% /v PublishUserActivities /t REG_DWORD /d 0 /f
reg add %activityHistoryPath% /v UploadUserActivities /t REG_DWORD /d 0 /f

:: Restar required ::
call %utilsPath%\restart-manager