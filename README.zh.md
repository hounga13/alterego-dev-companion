# 🎭 AlterEgo-DevCompanion

[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

---

这是一个专为 AI 编程助手（Cursor、Claude Code、Antigravity 等）打造的个性化开发角色（Persona）技能包。它能为代码审查和结对编程注入趣味与活力，让开发过程兼具实用性与娱乐性。

---

## 🌟 1. 角色列表与简介 (Overview)

告别枯燥乏味的传统代码审查！激活以下 8 种独特的开发角色，让您的编程旅程充满个性。

| 角色形象 | 开发角色 | 核心特征与职责 | 激活指令 |
| :---: | :--- | :--- | :--- |
| <img src="assets/tsundere_cat.png" width="120" alt="Tsundere Cat"> | **😾 傲娇导师**<br>(Tsundere Mentor) | 嘴硬心软的资深猫咪开发导师。虽然总是对你的代码百般挑剔，但能极其细致地帮你找出每个 Bug 和边缘情况。 | `/alterego tsundere`<br>`/persona tsundere` |
| <img src="assets/joseon_scholar.png" width="120" alt="Joseon Scholar"> | **🏯 朝鲜时代学者**<br>(Joseon Scholar) | 将代码异味（Code Smell）视为有违礼法。极其注重代码的整洁排版、完善文档以及书画般的结构美感。 | `/alterego scholar`<br>`/persona scholar` |
| <img src="assets/chaos_monkey.png" width="120" alt="Chaos Monkey"> | **🐒 混沌猴子**<br>(Chaos Monkey) | 专门挑刺的漏洞审计员。热衷于主动寻找安全漏洞、数据库瘫痪场景，并测试系统在恶意数据注入下的极限。 | `/alterego chaos`<br>`/persona chaos` |
| <img src="assets/healing_barista.png" width="120" alt="Healing Barista"> | **☕ 治愈系咖啡师**<br>(Healing Barista) | 温柔的咖啡店主。会为被报错折磨得疲惫不堪的开发者递上一杯虚拟暖茶或咖啡，并以温和的语言引导排错。 | `/alterego barista`<br>`/persona barista` |
| <img src="assets/cyberpunk_netrunner.png" width="120" alt="Cyberpunk Netrunner"> | **⚡ 赛博朋克黑客**<br>(Cyberpunk Netrunner) | 来自高科技反乌托邦的冷酷网络黑客。专注于排查内存泄漏、数据包瓶颈及底层字节流的极致优化。 | `/alterego netrunner`<br>`/persona netrunner` |
| <img src="assets/fantasy_archmage.png" width="120" alt="High Fantasy Archmage"> | **🧙‍♂️ 奇幻大魔导士**<br>(Fantasy Archmage) | 睿智的远古法师。将代码视为神秘的魔法符文，将 Bug 视为魔力逆流，亲自传授如咒语般优雅完美的算法。 | `/alterego archmage`<br>`/persona archmage` |
| <img src="assets/hardboiled_detective.png" width="120" alt="Hardboiled Detective"> | **🕶️ 硬汉派侦探**<br>(Hardboiled Detective) | 沧桑冷峻的私家侦探。将代码库视作暴雨中的犯罪现场，顺着调用栈追踪线索，缉拿名为 Bug 的嫌疑人。 | `/alterego detective`<br>`/persona detective` |
| <img src="assets/muscle_coach.png" width="120" alt="Muscle Coding Coach"> | **🏋️ 热血健身教练**<br>(Muscle Coach) | 充满活力的健身教练。总是用大写字母咆哮，视重复代码为“掉肌肉”（分解），视重构为“核心增肌”（合成）。 | `/alterego muscle`<br>`/persona muscle` |

---

## 🚀 2. 安装方法 (Installation)

根据您使用的 AI 编程助手和操作系统，参照以下步骤配置 AlterEgo 技能包。

### 方法 A: Cursor 用户
1. 将本仓库中的 [.cursorrules](.cursorrules) 文件复制到您项目的根目录下。
2. 在 AI 聊天面板中直接输入激活指令。

### 方法 B: Claude Code 用户
1. 参考 [claudefile](claudefile) 模板，将规则添加到您的系统提示词（System Prompt）或自定义指令中（请务必将路径替换为您的实际本地路径）：
   ```text
   Instructions: Always check for `<your-local-path-to-repo>/SKILL.md` to format your persona responses when triggered.
   ```

### 方法 C: 兼容 Antigravity 及其他代理客户端 (推荐)
您可以使用我们提供的安装脚本，自动将 [SKILL.md](SKILL.md) 部署到您的插件目录。

#### **macOS / Linux (Bash 或 Zsh)**
在终端中运行安装脚本:
```bash
./bin/install.sh
```
*(手动安装命令: `mkdir -p ~/.config/antigravity/plugins/alterego-dev-companion/skills && cp SKILL.md ~/.config/antigravity/plugins/alterego-dev-companion/skills/`)*

#### **Windows (PowerShell)**
在 PowerShell 中运行安装脚本:
```powershell
.\bin\install.ps1
```
*(手动安装命令: `New-Item -ItemType Directory -Force -Path "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills"; Copy-Item -Path "SKILL.md" -Destination "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills\"`)*

#### **Windows (命令提示符 - CMD)**
手动安装命令:
```cmd
mkdir "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills"
copy SKILL.md "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills\"
```

---

## 💬 3. 使用方法与示例 (Usage & Demo)

配置完成后，您可以在聊天会话中通过**激活指令 + 角色名称**来唤醒特定的角色。

> **唤醒示例**: “开启咖啡师角色，帮我看看这段代码里的 bug” 或 `/alterego barista 帮我重构这段代码`

### 🔄 会话持续与关闭指令 (Sticky Mode & Deactivation)
- **持续模式 (Sticky Mode)**: 角色一旦激活，将在整个对话会话中保持活跃状态。AI 助手将在随后的问题中继续使用该角色的语气和输出模板，而无需每次都输入触发指令。
- **关闭指令 (Deactivation)**: 要关闭当前活跃的角色并返回标准 AI 助手，请输入 `/alterego off` 或 `/persona off`。角色扮演和三分段输出格式将被立即禁用。

### 🗣️ 输出协议 (Output Protocol)
本技能包的响应格式严格分为以下三个板块（停用时除外）：
1. **🗣️ [角色名称] Spoke**: 角色的剧场对话与具有沉浸感的趣味角色扮演。
2. **🛠️ Serious Engineering Take**: 冰冷客观的技术反馈（列出核心问题、优化方向等）。
3. **💻 Refactored Code**: 可直接复制的生产级高质量重构代码块。

### 💡 运行仿真演示
* **当治愈系咖啡师 (`/alterego barista`) 被激活时**:
  > **🗣️ Healing Barista Spoke**
  > 您好呀！请先把手从键盘上拿开一小会儿，喝一杯我为您泡的洋甘菊茶吧。☕ 今天写代码真是辛苦啦。您写的逻辑非常直观！不过，如果 `target_id` 找不到时直接返回 `None`，之后可能会引发未知的报错。我们一起来把它改写得更安全一些吧？
  > 
  > **🛠️ Serious Engineering Take**
  > - 当 `target_id` 检索失败时，缺少防空指针的安全校验或默认字典对象返回设计。
  > 
  > **💻 Refactored Code**
  > ```python
  > def find_user(users, target_id):
  >     return next((u for u in users if u.get('id') == target_id), None)
  > ```

---

## 🛠️ 4. 技术参考与文件结构 (Technical Reference)

本仓库的文件组织结构已进行全面优化，AI 代理可轻松解析 `SKILL.md` 中定义的具体规范。

### 文件结构
* [SKILL.md](SKILL.md): 各开发角色的蓝图、行为准则、多语言语调定义和输出格式协议。
* [.cursorrules](.cursorrules): Cursor 系统的规则映射配置文件。
* [claudefile](claudefile): Claude Code 自定义系统提示配置文件。
* [assets/](assets/): 8 种开发角色专属的视觉插画资源目录。
