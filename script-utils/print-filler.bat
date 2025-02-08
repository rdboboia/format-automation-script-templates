:: Load args.
set printerIterations=%~1
set printerChar=%~2
set lineLength=%~3

:: Initialize variables (if required).
set lineContent=

if "%printerChar%"=="" (
	set printerChar=*
)

if "%lineLength%"=="" (
	set lineLength=100
)

:: Create line content.
:lineLoop
set /a lineLength=%lineLength% - 1
set lineContent=%lineContent%%printerChar%
if not %lineLength% LEQ 0 (goto lineLoop)

:: Print line content the requested number of times (default is 1).
:rowsLoop
:: Reduce iterations left ::
set /a printerIterations=%printerIterations% - 1

:: Print spacer ::
echo %lineContent%

:: Repeat while iterations > 0 ::
if not %printerIterations% LEQ 0 (goto rowsLoop)