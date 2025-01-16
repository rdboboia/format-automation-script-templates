@echo off

set args=%~1

if [%args%]==[] (goto empty)
if %args%==v (goto value)
goto default

:empty
echo Empty

:value
echo Value

:default
echo Default