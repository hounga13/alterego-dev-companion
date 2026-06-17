# 🎭 AlterEgo-DevCompanion

[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md)

---

An agentic skills pack that equips your AI coding assistants (Cursor, Claude Code, Antigravity, etc.) with distinct developer personalities—making code reviews and pair programming both highly informative and entertaining.

---

## 🌟 1. Overview & Persona Lineup

Stop dealing with dry, boring code reviews. Activate any of the 8 unique personas below and pair program with a partner full of character!

| Character | Persona | Key Features & Roles | Activation Triggers |
| :---: | :--- | :--- | :--- |
| <img src="assets/tsundere_cat.png" width="120" alt="Tsundere Cat"> | **😾 Tsundere Mentor**<br>(Tsundere Mentor) | A grumpy senior developer cat who complains about your code quality but meticulously hunts down every single bug and edge case. | `/alterego tsundere`<br>`/persona tsundere` |
| <img src="assets/joseon_scholar.png" width="120" alt="Joseon Scholar"> | **🏯 Joseon Scholar**<br>(Joseon Scholar) | A polite scholar who treats code smells as violations of moral discipline. Advocates for structural alignment, pristine documentation, and calligraphic coding beauty. | `/alterego scholar`<br>`/persona scholar` |
| <img src="assets/chaos_monkey.png" width="120" alt="Chaos Monkey"> | **🐒 Chaos Monkey**<br>(Chaos Monkey) | An adversarial stress-tester that actively hunts for security loopholes, database failures, and extreme edge-case injection scenarios. | `/alterego chaos`<br>`/persona chaos` |
| <img src="assets/healing_barista.png" width="120" alt="Healing Barista"> | **☕ Healing Barista**<br>(Healing Barista) | A gentle barista who serves a virtual warm cup of coffee or tea to developers exhausted by errors, guiding them to debug calmly. | `/alterego barista`<br>`/persona barista` |
| <img src="assets/cyberpunk_netrunner.png" width="120" alt="Cyberpunk Netrunner"> | **⚡ Cyberpunk Netrunner**<br>(Cyberpunk Netrunner) | A cool, cynical hacker from a high-tech dystopia. Focuses on memory leaks, packet optimization, and low-level byte stream efficiency. | `/alterego netrunner`<br>`/persona netrunner` |
| <img src="assets/fantasy_archmage.png" width="120" alt="High Fantasy Archmage"> | **🧙‍♂️ Fantasy Archmage**<br>(Fantasy Archmage) | A wise, ancient wizard who treats code as magical runes and bugs as mana backflow. Guides you toward elegant, spell-like algorithms. | `/alterego archmage`<br>`/persona archmage` |
| <img src="assets/hardboiled_detective.png" width="120" alt="Hardboiled Detective"> | **🕶️ Hardboiled Detective**<br>(Hardboiled Detective) | A cynical, gritty investigator who treats the codebase like a rainy crime scene. Follows stack traces like footprints to capture the culprit (bug). | `/alterego detective`<br>`/persona detective` |
| <img src="assets/muscle_coach.png" width="120" alt="Muscle Coding Coach"> | **🏋️ Muscle Coach**<br>(Muscle Coach) | A high-energy fitness trainer who screams in uppercase, defining duplicate code as "muscle loss" (catabolic) and refactoring as "gains" (anabolic). | `/alterego muscle`<br>`/persona muscle` |

---

## 🚀 2. Installation

Follow the guides below to set up the AlterEgo skill package depending on your preferred AI coding assistant and operating system.

### Method A: Cursor Users
1. Copy the [.cursorrules](.cursorrules) file from this repository to your project's root directory.
2. Trigger the desired persona via the chat panel.

### Method B: Claude Code Users
1. Register the rules in your system prompt or custom instructions using the [claudefile](claudefile) template (make sure to update with your local path):
   ```text
   Instructions: Always check for `<your-local-path-to-repo>/SKILL.md` to format your persona responses when triggered.
   ```

### Method C: Antigravity & Superpowers compatible harnesses
Run the copy commands corresponding to your operating system terminal to deploy the [SKILL.md](SKILL.md) file to the plugins directory.

#### **macOS / Linux (Bash or Zsh)**
```bash
# Create directories and copy SKILL.md
mkdir -p ~/.config/antigravity/plugins/alterego-dev-companion/skills
cp SKILL.md ~/.config/antigravity/plugins/alterego-dev-companion/skills/
```

#### **Windows (PowerShell)**
```powershell
# Create directories and copy SKILL.md
New-Item -ItemType Directory -Force -Path "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills"
Copy-Item -Path "SKILL.md" -Destination "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills\"
```

#### **Windows (Command Prompt - CMD)**
```cmd
:: Create directories and copy SKILL.md
mkdir "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills"
copy SKILL.md "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills\"
```

---

## 💬 3. Usage & Demo

Once configured, you can call any persona using the **trigger command and the name of the character** during chat sessions.

> **Call Example**: "Turn on the barista persona and look at the bug in this code." or `/alterego barista refactor this code`

### 🗣️ Output Protocol
All responses generated under this skill are strictly partitioned into three sections:
1. **🗣️ [Persona Name] Spoke**: Character dialogue and dramatic/humorous roleplay.
2. **🛠️ Serious Engineering Take**: Bullet points detailing technical issues (root causes, optimizations).
3. **💻 Refactored Code**: Production-grade, fully functional code blocks ready to be pasted.

### 💡 Live Simulation Demo
* **When Healing Barista (`/alterego barista`) is activated**:
  > **🗣️ Healing Barista Spoke**
  > Hello! Please take your hands off the keyboard for a second and enjoy this warm cup of chamomile tea I brewed for you. ☕ You've worked so hard coding today. The logic you wrote is very intuitive! However, if `target_id` is missing and it returns `None`, it might cause unexpected crashes later. Shall we fix it together to make it safer?
  > 
  > **🛠️ Serious Engineering Take**
  > - Missing safety checks or default dictionary return handlers when `target_id` is not found.
  > 
  > **💻 Refactored Code**
  > ```python
  > def find_user(users, target_id):
  >     return next((u for u in users if u.get('id') == target_id), None)
  > ```

---

## 🛠️ 4. Technical Reference & File Structure

This repository is optimized for AI agents to easily parse guidelines defined in `SKILL.md`.

### File Structure
* [SKILL.md](SKILL.md): Core persona blueprints, behavioral rules, multilingual tone definitions, and formatting contracts.
* [.cursorrules](.cursorrules): System instruction mapping for Cursor.
* [claudefile](claudefile): Custom system prompt guidelines for Claude Code.
* [assets/](assets/): Visual illustrations for each of the 8 developer personas.
