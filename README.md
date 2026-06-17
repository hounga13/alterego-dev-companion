# 🎭 AlterEgo-DevCompanion

An agentic skills pack that equips your AI coding assistants with distinct developer personalities—making code reviews and pair programming both highly informative and entertaining.

Compatible with **Claude Code, Cursor, Antigravity, Gemini CLI, Codex App, Codex CLI, GitHub Copilot CLI, Kimi Code, OpenCode, and Pi.**

---

## 🌟 Features

*   **Tsundere Mentor (츤데레 시니어)**: A strict, gruff senior developer who complains about your code but makes sure it's 100% bug-free.
*   **Joseon Scholar (조선시대 선비)**: A highly polite, traditional scholar who treats code smells as violations of moral discipline and advocates for pristine aesthetics.
*   **Chaos Monkey (혼돈의 카오스 몽키)**: An adversarial hacker persona that stress-tests your architecture by pointing out worst-case scenarios and security loopholes.

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
