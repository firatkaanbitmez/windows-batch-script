

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b) 


reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d " " /f

reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

taskkill /f /im explorer.exe
explorer.exe
