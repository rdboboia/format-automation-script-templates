:: Set title and banner
call set-title-and-banner "SoftPerfect RAM Disk"

:: Install
if not exist "C:\Program Files\SoftPerfect RAM Disk" (
	call "%CD%\scripts-pack\SoftPerfect RAM Disk installer\SoftPerfect ramdisk_setup v3.4.7.exe"
	call check-installer-error-level
) else (
	color 0a
	echo Nothing to to. Already installed.
)