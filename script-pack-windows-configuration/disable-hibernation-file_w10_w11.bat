:: Disables hibernation file. Note that the fast boot is also disabled as a side effect. It is also recommended, but not required; take this into account before disabling the hibernation.

:: Set title and banner ::
call %utilsPath%\set-title-and-banner "Windows Hibernation - Disable"

:: Disables the hibernation feature (and removes the hibernation file) ::
powercfg /h off

:: No restart required ::