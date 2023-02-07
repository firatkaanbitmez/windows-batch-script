
@echo off
color 0A

title C.By ARTHH
cls

cd %userprofile%\downloads

curl -L https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -o winpackageins.msixbundle



powershell -command "Add-AppPackage -path "%userprofile%\downloads\winpackageins.msixbundle""
pause