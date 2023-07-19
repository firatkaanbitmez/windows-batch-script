if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)


@echo off
title C.By ARTHH
:Start
color 0A
cls


cd %userprofile%\Downloads


taskkill /f /im winrar.exe

curl -L "https://raw.githubusercontent.com/firatkaanbitmez/WinRAR_Full_Register--NoNeedtoDownloadAnything/main/rarreg.zip" -o rarreg.zip


timeout 2


powershell -command "Expand-Archive rarreg.zip"



timeout 2
copy "%userprofile%\Downloads\rarreg\rarreg.key" "C:\Program Files\WinRAR"  /Y




pause
