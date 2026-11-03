# TA_CH_PC2 — 더아카이브 크리스마스 · 슬레이브 PC2 (벽 2 · 6200×1200)

이 PC는 게임 파일을 **PC1(마스터 192.168.5.20)** 에서 받아 화면 2 구간만 그립니다. 여기 저장소에는 실행 파일만 있습니다.

## 처음 한 번
1. Git for Windows 설치 → https://git-scm.com/download/win
2. `git clone https://github.com/aplan-company/TA_CH_PC2.git C:\TA_CH_PC2`

## 매번 실행
`C:\TA_CH_PC2\START.bat` — 최신으로 업데이트(git pull) → PC1 켜질 때까지 대기 → 크롬 전체화면

- 마스터 IP 변경: `run.bat` 의 `MASTER=` (저장소에서 고치면 다음 실행 때 자동 반영)
- 인터넷이 없으면 업데이트를 건너뛰고 마지막 파일로 실행

## 컴퓨터 켜질 때 자동 실행
1. `AUTOSTART_ON.bat` 한 번 실행 → Windows 시작프로그램에 `START.bat` 등록 (끄기: `AUTOSTART_OFF.bat`)
2. 로그인 화면에서 멈추지 않게 **Windows 자동 로그인** 설정: `Win+R` → `netplwiz` → "사용자 이름과 암호를 입력해야…" 체크 해제 → 암호 입력
3. (권장) 절전·화면 꺼짐 '안 함', Windows 업데이트 자동 재시작 시간 조정

부팅 순서: 네트워크 대기(최대 20초) → git pull → 실행. 인터넷이 없으면 마지막 파일로 실행.
크롬 복구 팝업(비정상 종료 후)과 첫 실행 안내는 뜨지 않게 설정돼 있음.
※ `START.bat` 자체는 되도록 수정하지 않음 (실행 중 자기 파일이 바뀌면 cmd가 꼬일 수 있어서 — 바뀌는 내용은 `run.bat`에)

## 송출 = WebSpout (크롬 자동 실행 안 함)
- `START.bat` → (PC1) 릴레이만 켜고 → WebSpout 실행. 게임 화면은 **WebSpout가 직접 열어서 Spout로 송출** (크롬을 같이 켜면 게임이 두 번 떠서 겹침)
- WebSpout가 바탕화면 `WebSpout\WebSpout.exe` 에 있으면 자동 실행. 프리셋에 이 PC 주소를 저장해 두기 (주소는 `run.bat` 맨 위 주석)
- 크롬으로 확인만 하고 싶을 때: `OPEN_CHROME_TEST.bat` (쇼 중엔 쓰지 않기)
- **PC1 WebSpout 주소에만 `host=1`** — 다른 PC/창에 host=1 이 또 열리면 폰 연결이 꼬임
