# Legend
- ✅ - Has an automation script.
- 👀 - Looking into a way to automate.
- ⚠ - Manual configuration required (no available script for now).
- ❌ - Automation not possible for now.






# Essentials (must be done BEFORE Windows tuneup)
- ImDisk Toolkit RAMDisk ✅
	+ RAMDisk configuration ❌
	+ Move temp folder to RAMDisk ✅
	+ Hide temp folder ✅






# Windows

## Windows Update
- Install latest windows updates ⚠
- Install optional updates + drivers ⚠
- Define custom active hours to avoid restarts ✅
- Disable Windows Update Delivery Optimization ✅

## Personalization

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
- Eclipse Adoptium Temurin 17 JDK with HotSpot ✅
- Firefox ✅
	+ Configuration can be stored and restored with account sync ✅
- Notepad++ ✅
	+ Plugin Markdown Panel ⚠
- HWiNFO ✅
	+ Configuration ⚠
		* Autostart with Windows
		* Start minimized
		* Show sensors only
		* Define alerts (if desired)
- MSI Afterburner ✅
	+ Configuration ⚠
- RivaTuner (included with MSI Afterburner, but sometimes outdated) ✅
	+ Configuration ⚠
	+ Custom overlay layout ⚠
- WinRAR ✅
	+ Add license ❌
- Git ✅
- Git GUI 👀
- Winget upgrade --all ✅
	+ Some programs will install with an older version. This should update it to the latest available version.






# TODO 👀
- Check admin privileges before proceeding with scripts (most of the scripts need it)
- Check Unattend Generator: https://schneegans.de/windows/unattend-generator/
- Check CCT Windows Utils
- Generic error handler?
- Utiity scripts installation
	+ Startup scripts
		* Set power plan to balanced
		* Create TEMP folder
		* Crate EZ-BACKUP shortcut
		* Create custom wallpaper shortcut
	+ Shutdown scripts (install + create shortcut on desktop)
		* Backups
		* Winget update --all
- Some programs might be reinstalled by windows after an update
	+ The uninstall scripts might need to be executed periodically
		* They should be inserted in the startup or shutdown group
- Office?