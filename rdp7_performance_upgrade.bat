@echo off
title Windows 7 RDP Ultra Performance (LAN Optimized)
echo ==========================================
echo   WINDOWS 7 RDP ULTRA PERFORMANCE TUNING
echo ==========================================
echo.

:: === Ana Registry yolu ===
set REGPATH=HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services

:: === GPU hızlandırma + Frame optimizasyon ===
:: 1 = GPU hızlandırmayı etkinleştir (RemoteFX destekli sistemlerde)
reg add "%REGPATH%" /v fEnableVirtualizedGraphics /t REG_DWORD /d 1 /f
:: 2 veya 3 = yüksek FPS yakalama oranı (3 = en akıcı, CPU kullanımına dikkat)
reg add "%REGPATH%" /v VGOptimization_CaptureFrameRate /t REG_DWORD /d 3 /f
:: 1 = düşük sıkıştırma, yüksek kalite (LAN ortamı için ideal)
reg add "%REGPATH%" /v VGOptimization_CompressionRatio /t REG_DWORD /d 1 /f
:: 1 = düşük sıkıştırma seviyesi (0 en düşük, 2 en yüksek)
reg add "%REGPATH%" /v MaxCompressionLevel /t REG_DWORD /d 1 /f
:: 1 = Görsel deneyim politikası aktif (GPU kullanımıyla uyumlu)
reg add "%REGPATH%" /v VisualExperiencePolicy /t REG_DWORD /d 1 /f

:: === RemoteFX – GPU encode + yüksek kalite ===
:: 1 = RemoteFX etkin
reg add "%REGPATH%" /v fEnableRemoteFX /t REG_DWORD /d 1 /f
:: 3 = Medium-High kalite (1=düşük, 2=orta, 3=yüksek)
reg add "%REGPATH%" /v RemoteFXEncodeQuality /t REG_DWORD /d 3 /f
:: 1 = Kalite odaklı sıkıştırma (0=denge, 1=kalite, 2=performans)
reg add "%REGPATH%" /v CompressionAlgorithm /t REG_DWORD /d 1 /f

:: === Şifreleme (LAN ortamında CPU tasarrufu) ===
:: 1 = Düşük seviye şifreleme (LAN içi güvenli ağlarda uygundur)
reg add "%REGPATH%" /v MinEncryptionLevel /t REG_DWORD /d 1 /f

:: === RDP 8.0 + UDP aktif (düşük gecikme) ===
reg add "%REGPATH%" /v fEnableRdp8 /t REG_DWORD /d 1 /f
reg add "%REGPATH%" /v fClientDisableUDP /t REG_DWORD /d 0 /f

:: === Dinamik sıkıştırma + bitmap cache ===
:: 1 = CPU yükünü optimize eder
reg add "%REGPATH%" /v fUseDynamicCompression /t REG_DWORD /d 1 /f
:: 40960KB = 40 MB bitmap cache (yüksek çözünürlükte hızlı yeniden çizim)
reg add "%REGPATH%" /v MaxBitmapCacheSize /t REG_DWORD /d 40960 /f

:: === Ağ optimizasyonu – NIC offload devre dışı ===
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DisableTaskOffload /t REG_DWORD /d 1 /f

:: === TCP ince ayarları ===
netsh interface tcp set global autotuninglevel=highlyrestricted >nul
netsh interface tcp set global chimney=disabled >nul
netsh interface tcp set global rss=disabled >nul
netsh interface tcp set global ecncapability=disabled >nul
netsh interface tcp set global dca=disabled >nul

:: === GPU uyku/ekran kapanma kaynaklı RDP lag fix ===
powercfg -change -monitor-timeout-ac 0
powercfg -change -standby-timeout-ac 0

:: === Zorunlu Grup İlkesi Yenileme ===
echo.
echo [*] Group Policy yeniden uygulanıyor...
gpupdate /force >nul

echo.
echo [OK] ULTRA LAN RDP performans ayarlari uygulandi.
echo [!] Degisikliklerin etkili olmasi icin sistemi yeniden baslatin.
pause
