# 🎭 AlterEgo-DevCompanion

An agentic skills pack that equips your AI coding assistants with distinct developer personalities—making code reviews and pair programming both highly informative and entertaining.

Compatible with **Claude Code, Cursor, Antigravity, Gemini CLI, Codex App, Codex CLI, GitHub Copilot CLI, Kimi Code, OpenCode, and Pi.**

---

## 🌟 Persona Lineup (8종 페르소나 라인업)

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

## 🛠️ Multi-Agent Integration Guide

This skill can be integrated into almost any modern AI coding client. Here is how you can set it up:

### 1. Cursor (`.cursorrules`)
Create or update a `.cursorrules` file in the root of your project:
```json
{
  "instruction": "Read and adhere to the guidelines defined in SKILL.md. When the user types /alterego <persona> or /persona <persona>, adopt that persona strictly according to the SKILL.md specifications."
}
```

### 2. Claude Code (`claudefile` / System Prompt)
For Claude Code, you can register this skill as a custom system instructions block or place it in your local configurations:
```text
Instructions: Always check for `/Users/hounga13/playground/skills/alterego-dev-companion/SKILL.md` to format your persona responses when triggered.
```

### 3. Antigravity & Superpowers compatible Harnesses
Copy the `SKILL.md` to your plugins/skills directory (e.g., `<appDataDir>/plugins/alterego-dev-companion/skills/SKILL.md`). The harness will automatically register the triggers:
- `/alterego <persona>`
- `/persona <persona>`

### 4. Codex CLI, Gemini CLI, Kimi Code, OpenCode, Pi, etc.
Include the content of `SKILL.md` as a prefix in your system instructions or append it to your active agent context.

---

## 💻 Output Format

When triggered, the agent will split its output into three clean sections:
1.  **🗣️ [Persona Name] Spoke** - Character dialogue (with humor and style).
2.  **🛠️ Serious Engineering Take** - Detailed technical analysis, issues found, and fixes.
3.  **💻 Refactored Code** - Production-ready, fully functional code block.
