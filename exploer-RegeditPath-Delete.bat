
@echo off
color a
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b) 

Reg DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\IEXPLORE.EXE" /f