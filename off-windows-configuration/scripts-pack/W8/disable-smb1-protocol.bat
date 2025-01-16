:: This script makes changes that are needed for Windows 8 and outdated Windows 10 systems. It disables the SMB1 file sharing protocol, which is deprecated since 2014. Leaving it enabled is a securiy risk (some Ransowares take advantage of this outdated feature to infect and spread; a good example can be WannaCry). We highly recommend disabling this feature (it comes disabled by default in recent Windows 10 updates).

:: Sets the title of the window
title SMB1Protocol Disable

:: Disables the SMB1 server
powershell Set-SmbServerConfiguration -EnableSMB1Protocol $false

:: Disables The SMB1 Windows feature (requires restart)
powershell Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol

:: Sets the restart required flag
set restartRequired=1