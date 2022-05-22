
@echo off
title C.By.ARTHHH
color 0A
cls
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)



cls 
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit/B
cls

net stop w32time

w32tm /unregister

w32tm /register

net start w32time

w32tm /resync



exit