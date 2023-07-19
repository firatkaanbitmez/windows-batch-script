
@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)


@echo off
title C.By ARTHH
:Start
color 0A
cls

taskkill /f /im Pichon.exe

powershell -command "winget uninstall --silent --name Pichon"

rmdir /S /Q  %userprofile%\AppData\Local\Icons8\Pichon\Data

del /q "C:\Program Files (x86)\Pichon" /f 

rmdir /S /Q  %userprofile%\Downloads\PichonData
del /q "%userprofile%\Downloads\PichonData.zip" /f 
del /q "%userprofile%\Downloads\PichonSetup.exe" /f 



cd %userprofile%\Downloads
curl -L "https://github.com/firatkaanbitmez/Pichon/raw/main/PichonData.zip" -o PichonData.zip

curl -L "https://github.com/firatkaanbitmez/Pichon/releases/download/1.0.0/PichonSetup.exe" -o PichonSetup.exe


timeout 2


powershell -command "Expand-Archive PichonData.zip"

PichonSetup.exe /S /V"/qn"
cls
color 0a

echo If you have Completed the Setup installation press "Enter" to continue.
echo If you have Completed the Setup installation press "Enter" to continue.
echo If you have Completed the Setup installation press "Enter" to continue.
timeout 5
taskkill /f /im Pichon.exe
cd C:\Users\FIRAT\AppData\Local\Icons8\Pichon
mkdir Data

cd C:\Program Files (x86)
mkdir Pichon

xcopy "%userprofile%\Downloads\PichonData\Data" "%userprofile%\AppData\Local\Icons8\Pichon\Data" /i /e /Y

timeout 3
copy "%userprofile%\Downloads\PichonData\Icons8.Auth.dll" "C:\Program Files (x86)\Pichon"  /Y


timeout 1

start "" "C:\Program Files (x86)\Pichon\Pichon.exe"
color 0A
cls
                                                                                              
echo
echo           _____ _______ _    _ _    _ _____  
echo     /\   |  __ \__   __| |  | | |  | |  __ \ 
echo    /  \  | |__) | | |  | |__| | |  | | |__) |
echo   / /\ \ |  _  /  | |  |  __  | |  | |  _  / 
echo  / ____ \| | \ \  | |  | |  | | |__| | | \ \ 
echo /_/    \_\_|  \_\ |_|  |_|  |_|\____/|_|  \_\
echo                                              
                                              


pause
