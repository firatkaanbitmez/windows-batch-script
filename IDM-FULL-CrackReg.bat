if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

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







xcopy "C:\ProgramData\IDM_REG\IDMREG.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" /i /e
