@echo off
rem === check-only: open screen 2 in Chrome (do NOT use during show - WebSpout already runs the game) ===
start "" chrome --new-window "http://192.168.5.20:8090/santa_split.html?screen=2&ws=ws://192.168.5.20:8090"
