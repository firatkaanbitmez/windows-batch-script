@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title C.By ARTHUR
:Start
color 0A
cls
call :Resume
goto %current%
goto :eof

:one
::Add script to Run key



taskkill /f /im OneDrive.exe
C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall


explorer windowsdefender://ThreatSettings
echo Do you want to continue? (Y/N)
choice /C YN

if errorlevel 2 (
    Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
) else (
    Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
    REM your code to run if "yes" goes here
)
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
DISM /online /enable-feature /featurename:MicrosoftWindowsPowerShellV2Root /Norestart
DISM /online /enable-feature /featurename:NetFx4Extended-ASPNET45 /Norestart
DISM /online /enable-feature /featurename:Microsoft-Hyper-V-Tools-All /Norestart
DISM /online /enable-feature /featurename:Microsoft-Hyper-V /Norestart
DISM /online /enable-feature /featurename:Microsoft-Hyper-V-Management-PowerShell /Norestart
DISM /online /enable-feature /featurename:Microsoft-Hyper-V-Management-Clients /Norestart
DISM /online /enable-feature /featurename:Microsoft-Hyper-V-Services /Norestart
DISM /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /Norestart
DISM /online /enable-feature /featurename:HypervisorPlatform /Norestart
DISM /online /enable-feature /featurename:Microsoft-Hyper-V-All /Norestart
DISM /online /enable-feature /featurename:VirtualMachinePlatform /Norestart
DISM /online /enable-feature /featurename:IIS-WebServer /Norestart
DISM /online /enable-feature /featurename:IIS-WebServerRole /Norestart
DISM /online /enable-feature /featurename:-ApplicationDevelopment /Norestart
DISM /online /enable-feature /featurename:IIS-RequestFiltering /Norestart
DISM /online /enable-feature /featurename:IIS-Security /Norestart
DISM /online /enable-feature /featurename:DirectPlay /Norestart
DISM /online /enable-feature /featurename:LegacyComponents /Norestart
DISM /online /enable-feature /featurename:NetFx3 /Norestart
DISM /online /enable-feature /featurename:WCF-NonHTTP-Activation /Norestart
DISM /online /enable-feature /featurename:WCF-HTTP-Activation /Norestart
DISM /online /enable-feature /featurename:WAS-WindowsActivationService /Norestart
DISM /online /enable-feature /featurename:IIS-NetFxExtensibility /Norestart
DISM /online /enable-feature /featurename:WAS-ProcessModel /Norestart
DISM /online /enable-feature /featurename:WAS-ConfigurationAPI /Norestart
DISM /online /enable-feature /featurename:WAS-NetFxEnvironment /Norestart
DISM /online /disable-feature /featurename:Internet-Explorer-Optional-amd64 /Norestart
DISM /online /disable-feature /featurename:Windows-Defender-Default-Definitions /Norestart
Reg DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\IEXPLORE.EXE" /f
powershell.exe -command "Get-AppxPackage Microsoft.WindowsFeedbackHub| Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.Getstarted | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *officehub* | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *skypeapp* | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *onenote* | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *bingweather* | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *Skype* | Remove-AppxPackage" 
powershell.exe -command "Get-AppxPackage *Spotify* | Remove-AppxPackage"    
powershell.exe -command "Get-AppxPackage Microsoft.MicrosoftStickyNotes | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.MixedReality.Portal | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.Xbox.TCUI | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.Xbox.TCUI | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.XboxGameOverlay | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.XboxIdentityProvider | Remove-AppxPackage"
powershell.exe -command "Get-AppxPackage Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage"
del /s /f /q “%USERPROFILE%\Local Settings\History”*.*
rd /s /q “%USERPROFILE%\Local Settings\History”
md “%USERPROFILE%\Local Settings\History”
del /s /f /q “%USERPROFILE%\Local Settings\Temporary Internet Files”*.*
rd /s /q “%USERPROFILE%\Local Settings\Temporary Internet Files”
md “%USERPROFILE%\Local Settings\Temporary Internet Files”
del /s /f /q “%USERPROFILE%\Local Settings\Temp”*.*
rd /s /q “%USERPROFILE%\Local Settings\Temp”
md “%USERPROFILE%\Local Settings\Temp”
del /s /f /q “%USERPROFILE%\Recent”*.*
rd /s /q “%USERPROFILE%\Recent”
md “%USERPROFILE%\Recent”
del /s /f /q “%USERPROFILE%\Cookies”*.*
rd /s /q “%USERPROFILE%\Cookies”
md “%USERPROFILE%\Cookies”


rd /s /q %prefetch%
mkdir %prefetch%
rd /s /q c:\windows\prefetch\
mkdir c:\windows\prefetch\


rd /s /q %temp%
mkdir %temp%
rd /s /q c:\windows\temp\
mkdir c:\windows\temp\

del /f /s /q %windir%\prefetch\*.* rd /s /q %windir%\temp & md %windir%\temp 



rd /s /q %SYSTEMDRIVE%\$Recycle.bin


powershell.exe -command "cleanmgr /sagerun:1 | out-Null"


RD /S /Q %SystemDrive%\windows.old
 
del /f /s /q %systemdrive%\*.tmp 

del /f /s /q %systemdrive%\*._mp 

del /f /s /q %systemdrive%\*.log 

del /f /s /q %systemdrive%\*.gid 

del /f /s /q %systemdrive%\*.chk  

del /f /s /q %systemdrive%\*.old 

del /f /s /q %windir%\*.bak 


attrib -h -r -s %windir%\system32\catroot2
attrib -h -r -s %windir%\system32\catroot2.
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
Ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
Ren C:\Windows\System32\catroot2 Catroot2.old
net start wuauserv
net start cryptSvc
net start bits
net start msiserver

echo two >%~dp0current.txt
echo -- Section one --
shutdown -r -t 10
goto :eof

:two



reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d " " /f

reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

taskkill /f /im explorer.exe
explorer.exe


powercfg -S e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /change -monitor-timeout-ac 0
powercfg /change -monitor-timeout-dc 0
powercfg /change -standby-timeout-ac 0
powercfg /change -standby-timeout-dc 0
powercfg /change -hibernate-timeout-ac 0
powercfg /change -hibernate-timeout-dc 0

Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v EnableTransparency /t REG_DWORD /d 0 /f
reg.exe add ""HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR"" /v ""AppCaptureEnabled"" /t REG_DWORD /d ""0"" /f"
explorer ms-windows-store:updates
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id VideoLAN.VLC"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Discord.Discord"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Valve.Steam"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id RARLab.WinRAR"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Opera.OperaGX"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Notepad++.Notepad++"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id EpicGames.EpicGamesLauncher"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Microsoft.VisualStudio.2022.Professional"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9PC3H3V7Q9CH"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Zoom.Zoom"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9NBLGGH4RSD8"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id XPFFH613W8V6LV"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Nvidia.GeForceExperience"

powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Google.Drive"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9NBLGGH516XP"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id PuTTY.PuTTY"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id RaspberryPiFoundation.RaspberryPiImager"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9PDXGNCFSCZV"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9WZDNCRFJ3T6"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9MVZQVXJBQ9V"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9P1J8S7CCWWT"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Microsoft.PowerAutomateDesktop"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9WZDNCRDMDM3"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9P6RC76MSMMJ"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9NKSQGP7F2NH"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9WZDNCRFJ364"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Microsoft.WindowsTerminal"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id CrystalDewWorld.CrystalDiskMark"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id RealVNC.VNCViewer"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id dotPDNLLC.paintdotnet"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Microsoft.Office"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id SteelSeries.GG"

powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Logitech.OptionsPlus"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id 9P1TBXR6QDCX"
powershell.exe -command "winget install --silent --accept-package-agreements --accept-source-agreements --id Brave.Brave"


echo three >%~dp0current.txt
echo -- Section two --
shutdown -r -t 10
goto :eof


:three
::Remove script from Run key
explorer ms-windows-store:updates
cd %userprofile%\Desktop
echo AMD Software Download Link >>Format.txt
echo https://www.amd.com/en/support >>Format.txt
echo Visual Studio PRO key  >>Format.txt
echo TD244-P4NB7-YQ6XK-Y8MMM-YWV2J  >>Format.txt

curl -L "https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe" -o dxsetup.exe


cd %userprofile%\downloads
curl -L https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -o winpackageins.msixbundle
curl -L "https://eu.battle.net/download/getInstaller?os=win&installer=Battle.net-Setup.exe&id=undefined" -o battlenet.exe
curl -L "https://patch.nttgame.com/knight/downloader/KnightOnline-DLM.exe" -o KnightDownloader.exe
curl -L "https://cfpatch.z8games.com/download/CrossFireWest.exe" -o CrossfireDownloader.exe
curl -L "https://valorant.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.live.eu.exe" -o Valorantinstaller.exe
curl -L "https://download.msi.com/uti_exe/common/Dragon-Center.zip" -o DragonCenter.zip
curl -L "https://mirror2.internetdownloadmanager.com/idman641build7.exe?v=lt&filename=idman641build7.exe" -o idm.exe
curl -L "https://desktop.githubusercontent.com/github-desktop/releases/3.2.0-3a1561b0/GitHubDesktopSetup-x64.exe" -o githubdesktop.exe
curl -L "https://github.com/firatkaanbitmez/Pichon/raw/main/PichonData.zip" -o PichonData.zip
curl -L "https://github.com/firatkaanbitmez/Pichon/releases/download/1.0.0/PichonSetup.exe" -o PichonSetup.exe
curl -L https://github.com/firatkaanbitmez/Infinity/releases/download/1.2.24/Setup.exe -o infinity.exe
curl -L https://github.com/firatkaanbitmez/SoundRecorder/releases/download/3.0.0/Setup.exe -o soundrecorder.exe
curl -L https://github.com/firatkaanbitmez/WindowsPackageUpdater/releases/download/1.0.9/Setup.exe -o winUP.exe
timeout 5
infinity.exe /S /V"/qn"
soundrecorder.exe /S /V"/qn"
winUP.exe /S /V"/qn"
githubdesktop.exe /S /V"/qn"
idm.exe /S /V"/qn"
battlenet.exe /S /V"/qn"
powershell -command "Expand-Archive DragonCenter.zip"
timeout 1
powershell -command "Add-AppPackage -path "%userprofile%\downloads\winpackageins.msixbundle""
cd %userprofile%\downloads\DragonCenter
ren *.exe dragoncenter.exe
dragoncenter.exe /S /V"/qn"
cd %userprofile%\downloads


KnightDownloader.exe /S /V"/qn"
CrossfireDownloader.exe /S /V"/qn"

Valorantinstaller.exe /S /V"/qn"

powershell -command "Add-AppPackage -path "%userprofile%\downloads\winpackageins.msixbundle""
PichonSetup.exe /S /V"/qn"
timeout 2
powershell -command "Expand-Archive PichonData.zip"
timeout 2
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

rmdir /S /Q C:\ProgramData\IDM_REG
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\IDMREG.bat"
taskkill /f /im IDMan.exe
cd C:\ProgramData
mkdir IDM_REG
echo taskkill /f /im IDMan.exe  >> C:\ProgramData\IDM_REG\"IDMREG".bat
echo reg import "C:\ProgramData\IDM_REG\idm_reset.reg"  >> C:\ProgramData\IDM_REG\"IDMREG".bat
echo reg import "C:\ProgramData\IDM_REG\idm_trial.reg"  >> C:\ProgramData\IDM_REG\"IDMREG".bat
echo reg import "C:\ProgramData\IDM_REG\idm_reg.reg"  >> C:\ProgramData\IDM_REG\"IDMREG".bat
echo start "" "C:\Program Files (x86)\Internet Download Manager\IDMan.exe" >> C:\ProgramData\IDM_REG\"IDMREG".bat

echo Windows Registry Editor Version 5.00 >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo [HKEY_CURRENT_USER\Software\DownloadManager] >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo "Serial"="" >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo [HKEY_CURRENT_USER\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo "scansk"=hex(0):91,1d,ac,d6,90,5c,42,ea,ba,1a,ac,08,1a,18,2f,16,2a,a8,0a,aa,24,bf,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   0c,fc,4e,7b,3b,76,f7,70,93,58,5c,03,03,7e,04,ab,b0,7e,00,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   00,00,00 >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo [HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo "scansk"=hex(0):91,1d,ac,d6,90,5c,42,ea,ba,1a,ac,08,1a,18,2f,16,2a,a8,0a,aa,24,bf,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   0c,fc,4e,7b,3b,76,f7,70,93,58,5c,03,03,7e,04,ab,b0,7e,00,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   00,00,00 >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo [HKEY_CURRENT_USER\Software\DownloadManager] >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo "scansk"=hex(0):91,1d,ac,d6,90,5c,42,ea,ba,1a,ac,08,1a,18,2f,16,2a,a8,0a,aa,24,bf,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   0c,fc,4e,7b,3b,76,f7,70,93,58,5c,03,03,7e,04,ab,b0,7e,00,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   00,00,00 >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo [HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo "scansk"=hex(0):91,1d,ac,d6,90,5c,42,ea,ba,1a,ac,08,1a,18,2f,16,2a,a8,0a,aa,24,bf,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   0c,fc,4e,7b,3b,76,f7,70,93,58,5c,03,03,7e,04,ab,b0,7e,00,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   00,00,00 >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo [HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo "scansk"=hex(0):91,1d,ac,d6,90,5c,42,ea,ba,1a,ac,08,1a,18,2f,16,2a,a8,0a,aa,24,bf,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   0c,fc,4e,7b,3b,76,f7,70,93,58,5c,03,03,7e,04,ab,b0,7e,00,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_trial".reg
echo   00,00,00 >> C:\ProgramData\IDM_REG\"idm_trial".reg

echo Windows Registry Editor Version 5.00 >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [-HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [HKEY_CURRENT_USER\Software\DownloadManager] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "FName"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "LName"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "Email"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "Serial"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [HKEY_LOCAL_MACHINE\Software\Internet Download Manager] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "FName"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "LName"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "Email"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "Serial"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo [HKEY_LOCAL_MACHINE\Software\Wow6432Node\Internet Download Manager] >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "FName"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "LName"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "Email"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg
echo "Serial"=- >> C:\ProgramData\IDM_REG\"idm_reset".reg

echo Windows Registry Editor Version 5.00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_CURRENT_USER\Software\DownloadManager] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "FName"="IDM trial reset" >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "LName"="(http://bit.ly/IDMresetTrialForum)" >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "Email"="your@email.com" >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "Serial"="9QNBL-L2641-Y7WVE-QEN3I" >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_CURRENT_USER\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "MData"=hex(0):21,9e,ac,77,b5,b5,26,3c,9d,ff,86,40,2d,b9,55,6c,13,17,81,2f,93,54,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2e,ab,2c,34,ca,dc,32,1f,a4,b0,c6,cc,4c,83,48,84,2c,1e,68,5f,4d,d7,ac,41,2e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   52,5c,6a,4a,78,7c,3b,39,8d,b3,d5,62,d6,a0,e8,12,e5,46,8f,3c,f2,5c,68,ee,21,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   15,a4,0a,99,ab,bf,d8,2c,5c,77,3b,01,33,e9,9b,4f,12,8e,c4,a7,a1,35,9f,eb,15,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,0a,99,ab,bf,d8,2c,ef,ac,0d,ee,9b,62,b8,89,1c,42,98,d2,36,ce,b3,9e,e7,56,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   88,5b,cc,7f,1d,40,34,a2,cd,43,fe,e6,97,15,40,11,6c,23,3f,1a,3c,92,0b,f9,20,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   e6,17,ac,22,68,8f,45,30,16,84,0d,f4,de,9c,e8,e5,a9,15,5d,d9,1c,22,d2,1b,76,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2d,b4,c4,bb,e8,84,71,b7,16,8a,2e,35,a0,a8,66,49,b7,1a,ec,38,0b,5f,4e,35,4e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   59,31,63,cd,d2,af,85,4e,90,32,ea,15,44,53,e0,8d,7b,af,34,b8,fe,c8,ec,2c,ef,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   8a,26,01,77,38,5b,df,31,59,65,36,d8,51,ef,7f,20,6d,43,d6,c2,e8,d6,17,18,16,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,d0,f3,ea,f7,83,c5,55,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "MData"=hex(0):21,9e,ac,77,b5,b5,26,3c,9d,ff,86,40,2d,b9,55,6c,13,17,81,2f,93,54,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2e,ab,2c,34,ca,dc,32,1f,a4,b0,c6,cc,4c,83,48,84,2c,1e,68,5f,4d,d7,ac,41,2e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   52,5c,6a,4a,78,7c,3b,39,8d,b3,d5,62,d6,a0,e8,12,e5,46,8f,3c,f2,5c,68,ee,21,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   15,a4,0a,99,ab,bf,d8,2c,5c,77,3b,01,33,e9,9b,4f,12,8e,c4,a7,a1,35,9f,eb,15,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,0a,99,ab,bf,d8,2c,ef,ac,0d,ee,9b,62,b8,89,1c,42,98,d2,36,ce,b3,9e,e7,56,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   88,5b,cc,7f,1d,40,34,a2,cd,43,fe,e6,97,15,40,11,6c,23,3f,1a,3c,92,0b,f9,20,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   e6,17,ac,22,68,8f,45,30,16,84,0d,f4,de,9c,e8,e5,a9,15,5d,d9,1c,22,d2,1b,76,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2d,b4,c4,bb,e8,84,71,b7,16,8a,2e,35,a0,a8,66,49,b7,1a,ec,38,0b,5f,4e,35,4e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   59,31,63,cd,d2,af,85,4e,90,32,ea,15,44,53,e0,8d,7b,af,34,b8,fe,c8,ec,2c,ef,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   8a,26,01,77,38,5b,df,31,59,65,36,d8,51,ef,7f,20,6d,43,d6,c2,e8,d6,17,18,16,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,d0,f3,ea,f7,83,c5,55,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "MData"=hex(0):21,9e,ac,77,b5,b5,26,3c,9d,ff,86,40,2d,b9,55,6c,13,17,81,2f,93,54,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2e,ab,2c,34,ca,dc,32,1f,a4,b0,c6,cc,4c,83,48,84,2c,1e,68,5f,4d,d7,ac,41,2e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   52,5c,6a,4a,78,7c,3b,39,8d,b3,d5,62,d6,a0,e8,12,e5,46,8f,3c,f2,5c,68,ee,21,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   15,a4,0a,99,ab,bf,d8,2c,5c,77,3b,01,33,e9,9b,4f,12,8e,c4,a7,a1,35,9f,eb,15,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,0a,99,ab,bf,d8,2c,ef,ac,0d,ee,9b,62,b8,89,1c,42,98,d2,36,ce,b3,9e,e7,56,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   88,5b,cc,7f,1d,40,34,a2,cd,43,fe,e6,97,15,40,11,6c,23,3f,1a,3c,92,0b,f9,20,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   e6,17,ac,22,68,8f,45,30,16,84,0d,f4,de,9c,e8,e5,a9,15,5d,d9,1c,22,d2,1b,76,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2d,b4,c4,bb,e8,84,71,b7,16,8a,2e,35,a0,a8,66,49,b7,1a,ec,38,0b,5f,4e,35,4e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   59,31,63,cd,d2,af,85,4e,90,32,ea,15,44,53,e0,8d,7b,af,34,b8,fe,c8,ec,2c,ef,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   8a,26,01,77,38,5b,df,31,59,65,36,d8,51,ef,7f,20,6d,43,d6,c2,e8,d6,17,18,16,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,d0,f3,ea,f7,83,c5,55,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "MData"=hex(0):21,9e,ac,77,b5,b5,26,3c,9d,ff,86,40,2d,b9,55,6c,13,17,81,2f,93,54,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2e,ab,2c,34,ca,dc,32,1f,a4,b0,c6,cc,4c,83,48,84,2c,1e,68,5f,4d,d7,ac,41,2e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   52,5c,6a,4a,78,7c,3b,39,8d,b3,d5,62,d6,a0,e8,12,e5,46,8f,3c,f2,5c,68,ee,21,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   15,a4,0a,99,ab,bf,d8,2c,5c,77,3b,01,33,e9,9b,4f,12,8e,c4,a7,a1,35,9f,eb,15,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,0a,99,ab,bf,d8,2c,ef,ac,0d,ee,9b,62,b8,89,1c,42,98,d2,36,ce,b3,9e,e7,56,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   88,5b,cc,7f,1d,40,34,a2,cd,43,fe,e6,97,15,40,11,6c,23,3f,1a,3c,92,0b,f9,20,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   e6,17,ac,22,68,8f,45,30,16,84,0d,f4,de,9c,e8,e5,a9,15,5d,d9,1c,22,d2,1b,76,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   2d,b4,c4,bb,e8,84,71,b7,16,8a,2e,35,a0,a8,66,49,b7,1a,ec,38,0b,5f,4e,35,4e,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   59,31,63,cd,d2,af,85,4e,90,32,ea,15,44,53,e0,8d,7b,af,34,b8,fe,c8,ec,2c,ef,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   8a,26,01,77,38,5b,df,31,59,65,36,d8,51,ef,7f,20,6d,43,d6,c2,e8,d6,17,18,16,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   a4,d0,f3,ea,f7,83,c5,55,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_CURRENT_USER\Software\DownloadManager] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "scansk"=hex(0):6f,4e,79,b5,cc,8b,50,bb,f4,b7,e2,6d,2e,38,d2,8b,ad,10,0b,03,a6,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   1b,53,30,6b,b8,8b,92,d6,04,22,c7,55,b9,a5,33,4d,a8,4e,9b,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   00,00,00,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_CURRENT_USER\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "scansk"=hex(0):6f,4e,79,b5,cc,8b,50,bb,f4,b7,e2,6d,2e,38,d2,8b,ad,10,0b,03,a6,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   1b,53,30,6b,b8,8b,92,d6,04,22,c7,55,b9,a5,33,4d,a8,4e,9b,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   00,00,00,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "scansk"=hex(0):6f,4e,79,b5,cc,8b,50,bb,f4,b7,e2,6d,2e,38,d2,8b,ad,10,0b,03,a6,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   1b,53,30,6b,b8,8b,92,d6,04,22,c7,55,b9,a5,33,4d,a8,4e,9b,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   00,00,00,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_LOCAL_MACHINE\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "scansk"=hex(0):6f,4e,79,b5,cc,8b,50,bb,f4,b7,e2,6d,2e,38,d2,8b,ad,10,0b,03,a6,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   1b,53,30,6b,b8,8b,92,d6,04,22,c7,55,b9,a5,33,4d,a8,4e,9b,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   00,00,00,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo [HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}] >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo "scansk"=hex(0):6f,4e,79,b5,cc,8b,50,bb,f4,b7,e2,6d,2e,38,d2,8b,ad,10,0b,03,a6,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   1b,53,30,6b,b8,8b,92,d6,04,22,c7,55,b9,a5,33,4d,a8,4e,9b,00,00,00,00,00,00,\ >> C:\ProgramData\IDM_REG\"idm_reg".reg
echo   00,00,00,00 >> C:\ProgramData\IDM_REG\"idm_reg".reg

taskkill /f /im IDMan.exe  
reg import "C:\ProgramData\IDM_REG\idm_reset.reg"  
reg import "C:\ProgramData\IDM_REG\idm_trial.reg"  
reg import "C:\ProgramData\IDM_REG\idm_reg.reg"  
timeout 2
xcopy "C:\ProgramData\IDM_REG\IDMREG.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" /i /e


cd %userprofile%\Downloads

taskkill /f /im winrar.exe

curl -L "https://raw.githubusercontent.com/firatkaanbitmez/WinRAR_Full_Register--NoNeedtoDownloadAnything/main/rarreg.zip" -o rarreg.zip

timeout 2

powershell -command "Expand-Archive rarreg.zip"

timeout 2
copy "%userprofile%\Downloads\rarreg\rarreg.key" "C:\Program Files\WinRAR"  /Y

timeout 1
powershell -command "winget upgrade"
powershell -command "winget upgrade --all -h"

timeout 1

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

del /s /f /q “%USERPROFILE%\Local Settings\History”*.*
rd /s /q “%USERPROFILE%\Local Settings\History”
md “%USERPROFILE%\Local Settings\History”
del /s /f /q “%USERPROFILE%\Local Settings\Temporary Internet Files”*.*
rd /s /q “%USERPROFILE%\Local Settings\Temporary Internet Files”
md “%USERPROFILE%\Local Settings\Temporary Internet Files”
del /s /f /q “%USERPROFILE%\Local Settings\Temp”*.*
rd /s /q “%USERPROFILE%\Local Settings\Temp”
md “%USERPROFILE%\Local Settings\Temp”
del /s /f /q “%USERPROFILE%\Recent”*.*
rd /s /q “%USERPROFILE%\Recent”
md “%USERPROFILE%\Recent”
del /s /f /q “%USERPROFILE%\Cookies”*.*
rd /s /q “%USERPROFILE%\Cookies”
md “%USERPROFILE%\Cookies”


rd /s /q %prefetch%
mkdir %prefetch%
rd /s /q c:\windows\prefetch\
mkdir c:\windows\prefetch\


rd /s /q %temp%
mkdir %temp%
rd /s /q c:\windows\temp\
mkdir c:\windows\temp\

del /f /s /q %windir%\prefetch\*.* rd /s /q %windir%\temp & md %windir%\temp 



rd /s /q %SYSTEMDRIVE%\$Recycle.bin


powershell.exe -command "cleanmgr /sagerun:1 | out-Null"


RD /S /Q %SystemDrive%\windows.old
 
del /f /s /q %systemdrive%\*.tmp 

del /f /s /q %systemdrive%\*._mp 

del /f /s /q %systemdrive%\*.log 

del /f /s /q %systemdrive%\*.gid 

del /f /s /q %systemdrive%\*.chk  

del /f /s /q %systemdrive%\*.old 

del /f /s /q %windir%\*.bak 


attrib -h -r -s %windir%\system32\catroot2
attrib -h -r -s %windir%\system32\catroot2.
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
Ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
Ren C:\Windows\System32\catroot2 Catroot2.old
net start wuauserv
net start cryptSvc
net start bits
net start msiserver
timeout 5

reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
taskkill /f /im explorer.exe
explorer.exe

timeout 5
del %~dp0current.txt
echo -- Section three --
shutdown -r -t 20
del "%userprofile%\Desktop\Format.bat"
goto :eof

:resume
if exist %~dp0current.txt (
    set /p current=<%~dp0current.txt
) else (
    set current=one
)
