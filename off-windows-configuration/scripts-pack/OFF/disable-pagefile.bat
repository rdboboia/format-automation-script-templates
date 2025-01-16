:: This script disables the virtual memory pagefile. We recommend disabling the pagefile on systems with enough RAM in order to minimize disk access, which may help the performance on systems with traditional hard drives and might reduce the wear on modern solid state drives. Either way, if there is enough RAM there is no need to use the pagefile.

:: Sets the title of the window
title Pagefile Disable

:: Disable automatic pagefile management
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False

:: Delete existing pagefile (default location)
wmic pagefileset where name="C:\\pagefile.sys" delete

:: Sets the restart required flag
set restartRequired=1