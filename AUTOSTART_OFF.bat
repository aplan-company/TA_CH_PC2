@echo off
set "LNK=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\TA_CH_PC2.lnk"
if exist "%LNK%" (del "%LNK%" & echo [OK] autostart removed) else (echo autostart was not installed)
pause
