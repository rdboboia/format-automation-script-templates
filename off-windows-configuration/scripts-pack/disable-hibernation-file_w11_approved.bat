:: Disables hibernation file. Note that the fast boot is also disabled as a side effect. It is also recommended, but not required; take this into account before disabling the hibernation.

:: Sets the title of the window
title Disable Hibernation (and fast boot as side effect)

:: Disables the hibernation feature (and removes the hibernation file)
powercfg /h off

:: No restart required