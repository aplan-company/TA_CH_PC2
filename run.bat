@echo off
setlocal enabledelayedexpansion
rem === PC2 : game screen is opened by WebSpout (Spout sender) ===
rem WebSpout URL (PC2): http://192.168.5.20:8090/santa_split.html?screen=2&ws=ws://192.168.5.20:8090&hud=0
set MASTER=192.168.5.20
echo waiting for PC1 (%MASTER%:8090) ...
:wait
curl -s -m 2 http://%MASTER%:8090/status >nul 2>nul
if errorlevel 1 (timeout /t 2 /nobreak >nul & goto wait)
set "WS=%USERPROFILE%\Desktop\WebSpout\WebSpout.exe"
if exist "%WS%" start "" "%WS%"
