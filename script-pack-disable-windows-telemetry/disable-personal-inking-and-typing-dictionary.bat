:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Disable personalized dictionary"

:: Registry folder paths ::
set persPath="HKCU\Software\Microsoft\Windows\CurrentVersion\CPSS\Store\InkingAndTypingPersonalization"
set persSettingsPath="HKCU\Software\Microsoft\Personalization\Settings"
set inputPersPath="HKCU\Software\Microsoft\InputPersonalization"
set trainedDataPath="HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore"

:: Modify registry to apply changes ::
reg add %persPath% /v Value /t REG_DWORD /d 0 /f

reg add %persSettingsPath% /v AcceptedPrivacyPolicy /t REG_DWORD /d 0 /f

reg add %inputPersPath% /v RestrictImplicitInkCollection /t REG_DWORD /d 1 /f
reg add %inputPersPath% /v RestrictImplicitTextCollection /t REG_DWORD /d 1 /f

reg add %trainedDataPath% /v HarvestContacts /t REG_DWORD /d 0 /f

:: Restar required ::
call %utilsPath%\restart-manager