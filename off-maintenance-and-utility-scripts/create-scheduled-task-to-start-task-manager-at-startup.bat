@echo off

:: Creates a new scheduled task to start task manager at system startup.
schtasks /create /tn "Start Task Manager" /tr "C:\WINDOWS\system32\Taskmgr.exe" /sc onlogon /rl highest

:: Note: on systems with the admin user separated from the main user the domain parameter may be required to properly configure the task.