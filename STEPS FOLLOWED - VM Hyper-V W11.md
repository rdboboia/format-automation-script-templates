# Legend
- ✅ - Has an automation script.
- 👀 - Looking into a way to automate.
- ⚠ - Manual configuration required (no available script for now, but might be possible).
- ❌ - Automation not possible for now.






# Essentials (must be done BEFORE Windows tuneup)
- SoftPerfect RAMDisk
	+ Installation ❌
	+ RAMDisk configuration
	+ Change temp folder path to RAMDisk ✅
	+ Hide temp folder ✅

- ImDisk Toolkit RAMDisk
	+ Installation ❌
	+ RAMDisk configuration ❌
	+ IMPORTANT NOTE:
		* IMDisk RAMDisk has some compatibility issues with Windws 11's UAC (tested on 24H2).
		* This makes all installers that require admin privileges to fail with 'Incorrect Function' error message.
		* Use this RAMDisk only for temporal file storage, but not for installers.
		* I still use it despite this issue because it allows me to create dynamic RAMDisk volumes.






# Windows

## Windows Update
- Install latest windows updates ⚠
- Install optional updates + drivers ⚠
- Define custom active hours to avoid restarts ✅
- Disable Windows Update Delivery Optimization ✅

## Customization

### Task Bar
- Disable web search ✅
- Disable search bar ✅
- Disable widgets ❌

### Explorer
- See extensions ✅
- Don't hide system files ✅
- Don't show hidden files ✅
- Order by type ❌
	+ Apply to all general folders ❌

### Snipping Tool
- Disable screenshot auto saving ❌
- Disable screen recoring auto saving ❌

### Task Manager
- Start at logon ✅
- Default to "Performance" tab ❌
- Update frequency to "High" ❌

## Telemetry & Privacy
- Disabled "DiagTrack" service ✅
- Disabled required telemetry data ✅
- Set telemetry frequency to never ✅
- Disable activity history ✅
- Disable personal inking and typing dictionaries ✅
- Search permissions ❌

## Features
- Install Hyper-V ✅
- Install Windows Sandbox ✅
- Remove Recall ✅






# Drivers
- Manually install your PC's required drivers ❌






# Programs

## Install
- Eclipse Adoptium Temurin 17 JDK with HotSpot ✅
- HWiNFO ✅
	+ Configuration ⚠
		* Start minimized
		* Show sensors only
- Mozilla Firefox ✅
	+ Configuration can be stored and restored with account sync ✅
- MSI Afterburner ✅
	+ Configuration ⚠
		* Can be saved and restored with the configuration files.
- RivaTuner (included with MSI Afterburner, but sometimes outdated) ✅
	+ Configuration ⚠
		* Can be saved and restored with the configuration files.
	+ Custom overlay layout ⚠
		* Can be saved and restored with the configuration files.
- Notepad++ ✅
	+ Plugin Markdown Panel ⚠
- WinRAR ✅
	+ Add license ❌

## Optional
- Google Quick Share ✅
- Git ✅
- Git GUI ✅

## Uninstall
- Microsoft Dev Home ✅
- Microsoft Teams ✅
- Microsoft 365 Copilot ✅
- Microsoft Interviewer Copilot ✅
- Microsoft One Drive ✅

## Updates
- Winget upgrade --all ✅
	+ Some programs will install with an older version. This should update it to the latest available version.

## Not available in Winget ❌
- Spring Tool Suite ❌
- Oracle Database XE ❌






# TODO 👀
- Disable explorer recent files?
- Check admin privileges before proceeding with scripts (most of the scripts need it)
- Office?

# For later
- Utiity scripts installation
	+ Startup scripts
		* Hide RAMDisk TEMP folder
	+ Shutdown scripts (install + create shortcut on desktop)
		* Backups
		* Winget update --all
- Some programs might be reinstalled by windows after an update
	+ The uninstall scripts might need to be executed periodically
		* They should be inserted in the startup or shutdown group

# Other useful tools
- Check Unattend Generator: https://schneegans.de/windows/unattend-generator/
	+ Allows you to create an unnatended windows installataion + configuration.
		* Useful for new installations.
- Check CTT Windows Utils: https://github.com/ChrisTitusTech/winutil
	+ Allos you to configure your current Windows system using a GUI.
		* Useful for already installed Windows. Some scripts here were inspired by this tool.