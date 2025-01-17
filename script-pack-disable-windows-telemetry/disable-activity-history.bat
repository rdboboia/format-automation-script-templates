:: Sets the title of the window ::
title Disable activity history

:: Registry folder paths ::
set activityHistoryPath="HKCU\Software\Microsoft\Siuf\Rules"

:: Modify registry to apply changes ::
reg add %activityHistoryPath% /v EnableActivityFeed /t REG_DWORD /d 0 /f
reg add %activityHistoryPath% /v PublishUserActivities /t REG_DWORD /d 0 /f
reg add %activityHistoryPath% /v UploadUserActivities /t REG_DWORD /d 0 /f

:: Restar required ::
set restartRequired=1