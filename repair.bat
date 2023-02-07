
@echo off
title C.By.ARTHHH
color 0A
cls



if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b) 

DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth

powershell -command "repair-windowsimage -online -scanHealth"


DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth /source:C:\Sources\Install.wim /LimitAccess
sfc /scannow
Dism /Online /Cleanup-Image /AnalyzeComponentStore
Dism /Online /Cleanup-Image /StartComponentCleanup
Dism /Online /Cleanup-Image /StartComponentCleanup /ResetBase



pause

