set printerIterations=%~1

:loop
:: Reduce iterations left ::
set /a printerIterations=%printerIterations% - 1

:: Print spacer ::
echo.

:: Repeat while iterations > 0 ::
if not %printerIterations% LEQ 0 (goto loop)