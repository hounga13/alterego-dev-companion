# 🎭 AlterEgo-DevCompanion

[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

---

AIコーディングエージェント（Cursor, Claude Code, Antigravityなど）に個性豊かな開発者ペルソナを付与し、コードレビューやペアプログラミングをより楽しく、有益にするエージェントスキルパックです。

---

## 🌟 1. ペルソナラインナップ (Overview)

退屈なコードレビューはもう終わり！以下の8つのペルソナを有効にして、個性豊かなパートナーと一緒に開発を進めましょう。

| キャラクター | ペルソナ | 主な特徴と役割 | トリガーコマンド |
| :---: | :--- | :--- | :--- |
| <img src="assets/tsundere_cat.png" width="120" alt="Tsundere Cat"> | **😾 ツンデレシニア**<br>(Tsundere Mentor) | 口うるさく愚痴をこぼすが、誰よりも細かくバグを見つけ出し、エッジケースまでしっかりケアしてくれる先輩猫エンジニア。 | `/alterego tsundere`<br>`/persona tsundere` |
| <img src="assets/joseon_scholar.png" width="120" alt="Joseon Scholar"> | **🏯 朝鮮時代の儒学者**<br>(Joseon Scholar) | コードを儒教の礼儀作法や伝統に例え、美しいアライメント、丁寧なドキュメント、整然とした構造を厳しく要求する学者。 | `/alterego scholar`<br>`/persona scholar` |
| <img src="assets/chaos_monkey.png" width="120" alt="Chaos Monkey"> | **🐒 カオスモンキー**<br>(Chaos Monkey) | 「DBがダウンしたら？」「巨大なデータが入力されたら？」など、システムの限界やセキュリティの脆弱性を容赦なく突いてくるストレステスター。 | `/alterego chaos`<br>`/persona chaos` |
| <img src="assets/healing_barista.png" width="120" alt="Healing Barista"> | **☕ ヒーリングバリスタ**<br>(Healing Barista) | エラーや警告で疲れ果てた開発者に温かい飲み物と優しい言葉をかけ、リラックスした状態でデバッグを進められるよう寄り添うヒーラー。 | `/alterego barista`<br>`/persona barista` |
| <img src="assets/cyberpunk_netrunner.png" width="120" alt="Cyberpunk Netrunner"> | **⚡ ネットランナー**<br>(Cyberpunk Netrunner) | 仮想空間のハッキング状況劇を交えながら、メモリリーク、パケットボトルネック、バイトストリーム最適化などのリソース改善に特化したハッカー。 | `/alterego netrunner`<br>`/persona netrunner` |
| <img src="assets/fantasy_archmage.png" width="120" alt="High Fantasy Archmage"> | **🧙‍♂️ 大魔道士**<br>(Fantasy Archmage) | プログラミングを神秘的な古代ルーン魔法、バグを魔力暴走や黒魔法に見立て、エレガントで呪文のような美しいコードを伝授する大賢者。 | `/alterego archmage`<br>`/persona archmage` |
| <img src="assets/hardboiled_detective.png" width="120" alt="Hardboiled Detective"> | **🕶️ ハードボイルド刑事**<br>(Hardboiled Detective) | コードベースを難解な殺人事件の現場に見立て、エラーログという手がかりを頼りに、冷徹かつ渋い独白と共にバグを逮捕する刑事。 | `/alterego detective`<br>`/persona detective` |
| <img src="assets/muscle_coach.png" width="120" alt="Muscle Coding Coach"> | **🏋️ 筋トレコーチ**<br>(Muscle Coach) | 「コードの重複は筋肉の減少（カタボリック）！」「リファクタリングは超回復（アナボリック）！」と熱く叫び、コア筋肉を鍛えさせる熱血コーチ。 | `/alterego muscle`<br>`/persona muscle` |

---

## 🚀 2. インストール方法 (Installation)

お使いのツールやOS環境に合わせて、以下の手順でスキルを設定してください。

### 方法A: Cursor をご利用の場合
1. リポジトリの [.cursorrules](.cursorrules) ファイルをプロジェクトのルートディレクトリにコピーします。
2. AIチャットウィンドウで各ペルソナのトリガーコマンドを呼び出します。

### 方法B: Claude Code をご利用の場合
1. Claude Code の設定ファイル（`claudefile`）を参考に、システムプロンプトやカスタム指示に以下のルールを追加します（パスはご自身のローカルリポジトリに合わせて変更してください）：
   ```text
   Instructions: Always check for `<your-local-path-to-repo>/SKILL.md` to format your persona responses when triggered.
   ```

### 方法C: Antigravity および互換エージェントをご利用の場合 (推奨)
提供されているインストール自動化スクリプトを実行することで、[SKILL.md](SKILL.md) ファイルを適切なプラグインディレクトリに簡単に配置できます。

#### **macOS / Linux (Bash or Zsh)**
ターミナルでスクリプトを実行します：
```bash
./install.sh
```
*(手動インストールの場合は： `mkdir -p ~/.config/antigravity/plugins/alterego-dev-companion/skills && cp SKILL.md ~/.config/antigravity/plugins/alterego-dev-companion/skills/`)*

#### **Windows (PowerShell)**
PowerShellでスクリプトを実行します：
```powershell
.\install.ps1
```
*(手動インストールの場合は： `New-Item -ItemType Directory -Force -Path "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills"; Copy-Item -Path "SKILL.md" -Destination "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills\"`)*

#### **Windows (コマンドプロンプト - CMD)**
手動インストールコマンド：
```cmd
:: ディレクトリを作成し、SKILL.mdをコピー
mkdir "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills"
copy SKILL.md "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills\"
```

---

## 💬 3. 使用方法と実例 (Usage & Demo)

設定完了後、会話の途中で**トリガーワードとペルソナ名**を入力することで有効化できます。

> **呼び出し例**: 「バリスタのペルソナで、このコードのバグを見てほしい」または `/alterego barista このコードをリファクタリングして`

### 🔄 セッション維持 & オフコマンド (Sticky Mode & Deactivation)
- **セッション維持 (Sticky Mode)**: 一度ペルソナが有効化されると、ユーザーがオフコマンドを入力するまで**会話セッション全体でそのペルソナのトーンと出力テンプレートが継続して維持**されます。毎回トリガーコマンドを入力し直す必要はありません。
- **オフコマンド (Deactivation)**: ペルソナモードを終了し、標準のAIアシスタントのトーンに戻すには、`/alterego off` または `/persona off` と入力します。ロールプレイと3つのセクションへの出力分割が即座に無効化されます。

### 🗣️ 出力プロトコル (Output Protocol)
このスキルで生成される応答は、常に以下の3つのセクションに明確に分割されます (無効化時を除く)：
1. **🗣️ [ペルソナ名] Spoke**: 選択されたキャラクターの個性豊かなセリフや状況劇のリアクション。
2. **🛠️ Serious Engineering Take**: 冷静かつプロフェッショナルな技術フィードバック（エラー原因、改善方向）。
3. **💻 Refactored Code**: コピペですぐに使える高品質なリファクタリングコードブロック。

### 💡 シミュレーション実例
* **ヒーリングバリスタ (`/alterego barista`) 有効時**:
  > **🗣️ Healing Barista Spoke**
  > いらっしゃいませ！少しキーボードから手を離して、淹れたての温かいカフェラテをどうぞ。☕ 今日も開発お疲れ様です。書かれたロジック、直感的でとても素敵ですね！ただ、target_idが見つからない時に `None` が返ると後でエラーになるかもしれないので、より安全に修正してみましょう。
  > 
  > **🛠️ Serious Engineering Take**
  > - target_id の探索に失敗した際の例外またはデフォルト値処理の設計が漏れています。
  > 
  > **💻 Refactored Code**
  > ```python
  > def find_user(users, target_id):
  >     return next((u for u in users if u.get('id') == target_id), None)
  > ```

---

## 🛠️ 4. 技術ガイドと構成ファイル (Technical Reference)

このプロジェクトは、AIエージェントが `SKILL.md` に定義されたペルソナの指示を簡単に解析できるように設計されています。

### ファイル構造
* [SKILL.md](SKILL.md): 8つのペルソナのコアガイド、アプローチ、日本語/韓国語の話し方定義、応答テンプレート定義。
* [.cursorrules](.cursorrules): Cursor AI連携用のシステムルール設定。
* [claudefile](claudefile): Claude Code連携用のシステム指示。
* [assets/](assets/): 各ペルソナのキャラクターイラストフォルダ。
