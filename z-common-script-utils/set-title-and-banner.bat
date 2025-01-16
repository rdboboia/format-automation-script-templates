setlocal

:: Vars ::
set msg=%~1
set text=***
set spaces=                                                                                       "
set hl=********************************************************************************************

:: Format text ::
set text=%text% %msg% %spaces%
set text=%text:~0,88% ***

:: Change window title ::
title %msg%

:: Add banner ::
echo %hl%
echo %text%
echo %hl%

endlocal