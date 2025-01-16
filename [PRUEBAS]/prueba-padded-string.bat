@echo off
setlocal
set "spaces=                                           "
set "timestamp=%date% -%time%"
set "machineName=PC-Name-grandeeeeee012345678901234567890123456789"
set "message=Message goes here"
set "line=%timestamp% - %machineName%%spaces%"
set "line=%line:~0,43% - %message%
echo %~dp0
echo %~n0
echo %line%
pause