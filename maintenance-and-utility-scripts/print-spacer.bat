set iterations=%~1

:loop
:: Reduce iterations left ::
set /a iterations=%iterations% - 1

:: Print spacer
echo.

:: Repeat while iterations > 0
if not %iterations%==0 (goto loop)