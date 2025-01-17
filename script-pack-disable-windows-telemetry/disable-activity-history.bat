:: Sets the title of the window ::
title Disable activity history

:: Registry folder paths ::
set activityHistoryPath="HKLM\SOFTWARE\Policies\Microsoft\Windows\System"

:: Modify registry to apply changes ::
reg add %activityHistoryPath% /v EnableActivityFeed /t REG_DWORD /d 0 /f
reg add %activityHistoryPath% /v PublishUserActivities /t REG_DWORD /d 0 /f
reg add %activityHistoryPath% /v UploadUserActivities /t REG_DWORD /d 0 /f

:: Restar required ::
set restartRequired=1