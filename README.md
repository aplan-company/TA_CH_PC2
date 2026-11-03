# TA_CH_PC2 — 더아카이브 크리스마스 · 슬레이브 PC2 (벽 2 · 6200×1200)

이 PC는 게임 파일을 **PC1(마스터 192.168.5.20)** 에서 받아 화면 2 구간만 그립니다. 여기 저장소에는 실행 파일만 있습니다.

## 처음 한 번
1. Git for Windows 설치 → https://git-scm.com/download/win
2. `git clone https://github.com/aplan-company/TA_CH_PC2.git C:\TA_CH_PC2`

## 매번 실행
`C:\TA_CH_PC2\START.bat` — 최신으로 업데이트(git pull) → PC1 켜질 때까지 대기 → 크롬 전체화면

- 마스터 IP 변경: `run.bat` 의 `MASTER=` (저장소에서 고치면 다음 실행 때 자동 반영)
- 인터넷이 없으면 업데이트를 건너뛰고 마지막 파일로 실행
