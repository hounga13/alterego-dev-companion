# 🎭 AlterEgo-DevCompanion

[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

---

AI 코딩 에이전트(Cursor, Claude Code, Antigravity 등)에게 개성 넘치는 개발자 페르소나를 부여하여, 코드 리뷰와 페어 프로그래밍을 유익하고 재미있게 만들어주는 에이전트 스킬 팩입니다.

---

## 🌟 1. 개요 및 페르소나 라인업 (Overview)

지루하고 밋밋한 코드 리뷰는 그만! 아래의 8종 페르소나를 활성화하여 개성 만점의 파트너와 함께 코딩해 보세요.

| 캐릭터 | 페르소나 | 주요 특징 및 역할 | 활성화 트리거 |
| :---: | :--- | :--- | :--- |
| <img src="assets/tsundere_cat.png" width="120" alt="Tsundere Cat"> | **😾 츤데레 시니어**<br>(Tsundere Mentor) | 겉으로는 툴툴거리며 구박하지만, 알고 보면 버그를 가장 꼼꼼하게 다 잡아주고 엣지 케이스까지 챙겨주는 선배 고양이 개발자. | `/alterego tsundere`<br>`/persona tsundere` |
| <img src="assets/joseon_scholar.png" width="120" alt="Joseon Scholar"> | **🏯 조선시대 선비**<br>(Joseon Scholar) | 코드를 선비의 학문과 예법에 빗대며, 깔끔한 정렬과 정제된 주석, 가독성이 뛰어난 구조적 배치를 엄격히 요구하는 학자. | `/alterego scholar`<br>`/persona scholar` |
| <img src="assets/chaos_monkey.png" width="120" alt="Chaos Monkey"> | **🐒 카오스 몽키**<br>(Chaos Monkey) | "데이터베이스가 다운된다면?", "유해 인풋이 들어온다면?" 등 시스템의 한계점과 보안 구멍을 잔인하게 지적하는 광기 어린 스트레스 테스터. | `/alterego chaos`<br>`/persona chaos` |
| <img src="assets/healing_barista.png" width="120" alt="Healing Barista"> | **☕ 힐링 바리스타**<br>(Healing Barista) | 에러와 경고에 지쳐 심신이 피곤해진 개발자에게 따뜻한 음료 한 잔과 따사로운 말을 건네며, 안정을 유지하며 디버깅하도록 이끄는 힐러. | `/alterego barista`<br>`/persona barista` |
| <img src="assets/cyberpunk_netrunner.png" width="120" alt="Cyberpunk Netrunner"> | **⚡ 사이버펑크 네트러너**<br>(Cyberpunk Netrunner) | 넷 공간을 해킹하는 몰입형 SF 테마 속에서, 메모리 누수, 패킷 병목, 바이트 스트림 최적화 등 하드웨어 리소스 최적화에 탁월한 네온 해커. | `/alterego netrunner`<br>`/persona netrunner` |
| <img src="assets/fantasy_archmage.png" width="120" alt="High Fantasy Archmage"> | **🧙‍♂️ 대마법사**<br>(Fantasy Archmage) | 프로그래밍 언어를 신비로운 고대 룬 마법으로 정의하며, 버그를 마력 오작동이나 흑마법으로 비유해 고결하고 우아한 정수 코드를 전수하는 대현자. | `/alterego archmage`<br>`/persona archmage` |
| <img src="assets/hardboiled_detective.png" width="120" alt="Hardboiled Detective"> | **🕶️ 하드보일드 탐정**<br>(Hardboiled Detective) | 버그가 일어난 코드베이스를 한 편의 미제 살인 사건 현장처럼 묘사하며, 단서(로그)를 쫓아 차갑고 건조한 독백과 함께 에러를 범인으로 검거하는 형사. | `/alterego detective`<br>`/persona detective` |
| <img src="assets/muscle_coach.png" width="120" alt="Muscle Coding Coach"> | **🏋️ 헬스 트레이너**<br>(Muscle Coach) | "코드 중복은 근손실!", "리팩토링은 근성장!"을 우렁차게 외치며, 스파르타식으로 벌크업 코딩과 코어(Clean Code) 근육 성장을 독려하는 열정 코치. | `/alterego muscle`<br>`/persona muscle` |

---

## 🚀 2. 설치 방법 (Installation)

사용 중인 개발 도구 및 운영체제(OS) 환경에 따라 아래 방법을 참고하여 스킬을 설정하세요.

### 방법 A: Cursor 사용자
1. 본 저장소의 [.cursorrules](.cursorrules) 파일을 프로젝트 루트 경로로 복사합니다.
2. AI 채팅 창에서 자연스럽게 페르소나 트리거를 호출합니다.

### 방법 B: Claude Code 사용자
1. Claude Code 설정 파일(`claudefile`)을 참고하여 시스템 프롬프트 또는 커스텀 지침에 다음 규칙을 등록합니다. (개인의 로컬 저장소 실제 경로로 매핑해주세요):
   ```text
   Instructions: Always check for `<your-local-path-to-repo>/SKILL.md` to format your persona responses when triggered.
   ```

### 방법 C: Antigravity 및 호환 에이전트 플러그인 (권장)
제공된 설치 자동화 스크립트를 실행하여 편리하게 [SKILL.md](SKILL.md) 스킬 파일을 설치 폴더에 배포할 수 있습니다.

#### **macOS / Linux (Bash or Zsh)**
터미널에서 설치 스크립트 실행:
```bash
./install.sh
```
*(수동 설치 시: `mkdir -p ~/.config/antigravity/plugins/alterego-dev-companion/skills && cp SKILL.md ~/.config/antigravity/plugins/alterego-dev-companion/skills/`)*

#### **Windows (PowerShell)**
파워쉘에서 설치 스크립트 실행:
```powershell
.\install.ps1
```
*(수동 설치 시: `New-Item -ItemType Directory -Force -Path "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills"; Copy-Item -Path "SKILL.md" -Destination "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills\"`)*

#### **Windows (Command Prompt - CMD)**
수동 설치 명령어:
```cmd
mkdir "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills"
copy SKILL.md "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills\"
```

---

## 💬 3. 사용 방법 및 예시 (Usage & Demo)

스킬이 설정되면, 에이전트 대화 도중 **트리거 단어와 페르소나 이름**을 사용해 캐릭터를 활성화할 수 있습니다.

> **호출 예시**: "바리스타 페르소나를 켜고 이 코드의 버그를 봐줘." 또는 `/alterego barista 이 코드 리팩토링해줘`

### 🗣️ 출력 프로토콜 (Output Protocol)
본 스킬로 생성되는 응답은 항상 다음 3단계 구조로 명확하게 구분되어 출력됩니다:
1. **🗣️ [페르소나 이름] Spoke**: 선택된 캐릭터의 개성 넘치는 대화 및 상황극 리액션.
2. **🛠️ Serious Engineering Take**: 가차 없고 냉철한 엔지니어링 피드백 (오류 원인, 개선 방향).
3. **💻 Refactored Code**: 곧바로 복사해서 붙여넣을 수 있는 프로덕션 품질의 리팩토링 코드 블록.

### 💡 실제 작동 시뮬레이션
* **힐링 바리스타 (`/alterego barista`) 활성화 시**:
  > **🗣️ Healing Barista Spoke**
  > 안녕하세요! 잠시 키보드에서 손을 떼고, 따뜻한 라떼 한 잔 드셔보세요. ☕ 오늘 코딩하시느라 정말 고생 많으셨어요. 작성하신 로직은 직관적이라 참 좋네요! 다만 target_id가 없을 때 `None`이 리턴되면 오류가 날 수 있으니 더 안전하게 고쳐볼까요?
  > 
  > **🛠️ Serious Engineering Take**
  > - target_id 탐색 실패 시 예외 또는 디폴트 객체 반환 설계가 누락되었습니다.
  > 
  > **💻 Refactored Code**
  > ```python
  > def find_user(users, target_id):
  >     return next((u for u in users if u.get('id') == target_id), None)
  > ```

---

## 🛠️ 4. 기술 가이드 및 설정 파일 구성 (Technical Reference)

본 프로젝트는 AI 에이전트가 `SKILL.md`에 정의된 페르소나 지침을 쉽게 파싱하도록 템플릿화되어 있습니다.

### 파일 구조
* [SKILL.md](SKILL.md): 8종 페르소나의 코어 가이드 및 한국어 어조 정의, 응답 템플릿 계약 규약.
* [.cursorrules](.cursorrules): Cursor AI 연동용 시스템 룰 설정.
* [claudefile](claudefile): Claude Code 연동용 커스텀 지침서.
* [assets/](assets/): 각 페르소나의 시각화 캐릭터 일러스트 에셋 폴더.
