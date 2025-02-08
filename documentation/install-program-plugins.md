# General idea
Implement in JAVA or any other programming language a way to automatically install pluigns for programs.

# Programs

## Notepad++

### Plugins
- MarkdownPanel
- JSON Tools
- Compare

### API to get the updated plugin list
https://raw.githubusercontent.com/notepad-plus-plus/nppPluginList/master/src/pl.x64.json

### Implementation
- GET service with DTO mapping.
- GET service to download zip.
- Extract zip in the target folder: C:\Program Files\Notepad++\plugins

### Refs
https://community.notepad-plus-plus.org/topic/17168/update-installed-plugins-via-script-cmd/9

## Mozilla Firefox
- UBlock Origin

### Latest Ublock
https://addons.mozilla.org/firefox/downloads/file/4391011/ublock_origin-1.61.2.xpi
https://addons.mozilla.org/firefox/downloads/latest/4391011/addon-4391011-latest.xpi
https://addons.mozilla.org/firefox/downloads/latest/1865/addon-1865-latest.xpi

### Refs
https://askubuntu.com/questions/73474/how-to-install-firefox-addon-from-command-line-in-scripts
