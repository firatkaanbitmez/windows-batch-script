@echo off
set /p KLASOR_ADI="Gizlemek istediğiniz klasörün dosya yolunu girin: "

REM Dosyayı gizlemek için:
attrib +h +s +r "%KLASOR_ADI%"
echo Klasör gizlendi.
pause

REM Dosyayı göstermek için:
attrib -h -s -r "%KLASOR_ADI%"
echo Klasör gösterildi.
pause
