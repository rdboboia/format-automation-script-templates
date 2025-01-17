:: Disables sticky keys (SHIFT x5) and enables toggle keys sound (caps, num, and scroll locks) ::

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Configure keyboard settings"

:: Registry folder paths ::
set stickyKeysPath="HKCU\Control Panel\Accessibility\StickyKeys"
set toggleKeysPath="HKCU\Control Panel\Accessibility\ToggleKeys"

:: Disables sticky keys (might affect multiple settings) ::
reg add %stickyKeysPath% /v Flags /t REG_SZ /d 506 /f

:: Enables toggle keys sound (might affect multiple settings) ::
reg add %toggleKeysPath% /v Flags /t REG_SZ /d 63 /f

:: Requires restart ::
call %utilsPath%\restart-manager