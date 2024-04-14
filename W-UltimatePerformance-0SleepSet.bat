if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b) 

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

powercfg -S e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /change -monitor-timeout-ac 0
powercfg /change -monitor-timeout-dc 0
powercfg /change -standby-timeout-ac 0
powercfg /change -standby-timeout-dc 0
powercfg /change -hibernate-timeout-ac 0
powercfg /change -hibernate-timeout-dc 0

