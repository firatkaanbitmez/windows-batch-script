


@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)


@echo off
title C.By ARTHH
:Start
color 0A

Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewContextMenu" /f

taskkill /f /im explorer.exe
explorer.exe
exit