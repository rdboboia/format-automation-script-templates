:: Changes the default temp folders to a custom path (in my case in RAMDisk).

:: WARNING: the defined path MUST exist (windows doesn't create it).
:: If you are using RAMDisk you must create the defined folder path with the RAMDisk software or with a batch script pinned to the startup.
:: Not doing so might lead to numerous errors.
:: Not having enought storage can also lead to errors (some programs extract the installation files inside the TEMP folder).

:: Sets the title of the window
TITLE Move temporal folder path

:: Target folder WARNING
echo WARNING: the defined path MUST exist (windows doesn't create it).
echo Make sure it exists before proceeding.
pause

:: Sets the TEMP and TMP default path to a custom path
SETX TEMP Z:\AppData\Local\Temp
SETX TMP Z:\AppData\Local\Temp

:: No restart required.