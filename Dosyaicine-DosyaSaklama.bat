@echo off
REM Bu betik, bir resim dosyasının içine başka bir dosyayı saklar.

REM Kullanıcıdan dosya adını giriş olarak alınır.
set /p "dosya_adı=Olusturulacak resim dosyasinin adini girin (uzanti olmadan ornegin: testdosya): "

REM Masaüstü yolu belirlenir.
set "masaüstü_yolu=%USERPROFILE%\Desktop"

REM Çıktı dosyasının yolu oluşturulur.
set "çıktı_dosyası=%masaüstü_yolu%\%dosya_adı%.jpeg"

REM Kullanıcıdan resim dosyasının yolunu ve saklanacak dosyanın yolunu giriş olarak alınır.
set /p "resim_yolu=Resim dosyasinin yolunu girin: "
set /p "saklanacak_dosya=Resim dosyasina saklanacak dosyanin yolunu girin: "

REM Dosyaların varlığı kontrol edilir.
IF NOT EXIST "%resim_yolu%" (
    echo Hata: Belirtilen resim dosyasi bulunamadi: %resim_yolu%
    pause
    exit /b
)

IF NOT EXIST "%saklanacak_dosya%" (
    echo Hata: Saklanacak dosya bulunamadi: %saklanacak_dosya%
    pause
    exit /b
)

REM Dosyaların birleştirilmesi için COPY komutu kullanılır.
REM /B bayt modunda birleştirme işlemi yapar.
REM İlk dosya (resim dosyası) ve ikinci dosya (saklanacak dosya) birleştirilir.
REM Üçüncü dosya (çıktı dosyası) adı altında saklanır.
copy /b "%resim_yolu%" + "%saklanacak_dosya%" "%çıktı_dosyası%"

REM İşlem tamamlandıktan sonra kullanıcıya bilgi verilir.
echo Dosya basariyla saklandi: %çıktı_dosyası%
pause
