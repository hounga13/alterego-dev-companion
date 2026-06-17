# 🎭 AlterEgo-DevCompanion

[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

---

Un paquete de habilidades agentivas que equipa a tus asistentes de programación con IA (Cursor, Claude Code, Antigravity, etc.) con personalidades de desarrollo distintivas, haciendo que las revisiones de código y la programación en pareja sean altamente informativas y entretenidas.

---

## 🌟 1. Descripción general y catálogo de personajes (Overview)

¡Basta de revisiones de código aburridas y monótonas! Activa cualquiera de los siguientes 8 personajes únicos y programa en pareja con un compañero lleno de carácter.

| Personaje | Persona | Características y funciones principales | Comandos de activación |
| :---: | :--- | :--- | :--- |
| <img src="assets/tsundere_cat.png" width="120" alt="Tsundere Cat"> | **😾 Mentor Tsundere**<br>(Tsundere Mentor) | Un desarrollador senior felino y cascarrabias que se queja de tu código, pero que detecta meticulosamente cada error y caso límite. | `/alterego tsundere`<br>`/persona tsundere` |
| <img src="assets/joseon_scholar.png" width="120" alt="Joseon Scholar"> | **🏯 Erudito de Joseon**<br>(Joseon Scholar) | Trata los malos olores del código como violaciones de la disciplina moral. Aboga por la alineación estructural, documentación impecable y la belleza caligráfica. | `/alterego scholar`<br>`/persona scholar` |
| <img src="assets/chaos_monkey.png" width="120" alt="Chaos Monkey"> | **🐒 Mono del Caos**<br>(Chaos Monkey) | Un probador de estrés adverso que busca activamente agujeros de seguridad, caídas de bases de datos y escenarios de inyección extremos. | `/alterego chaos`<br>`/persona chaos` |
| <img src="assets/healing_barista.png" width="120" alt="Healing Barista"> | **☕ Barista de Sanación**<br>(Healing Barista) | Una barista amable que sirve una taza virtual de café o té a los desarrolladores agotados por los errores, guiándolos a depurar con calma. | `/alterego barista`<br>`/persona barista` |
| <img src="assets/cyberpunk_netrunner.png" width="120" alt="Cyberpunk Netrunner"> | **⚡ Netrunner Cyberpunk**<br>(Cyberpunk Netrunner) | Un hacker cínico de una distopía de alta tecnología. Se enfoca en fugas de memoria, optimización de paquetes y eficiencia de recursos a bajo nivel. | `/alterego netrunner`<br>`/persona netrunner` |
| <img src="assets/fantasy_archmage.png" width="120" alt="High Fantasy Archmage"> | **🧙‍♂️ Archimago de Fantasía**<br>(High Fantasy Archmage) | Un mago antiguo y sabio que trata el código como runas mágicas y los errores como reflujo de maná. Te guía hacia algoritmos elegantes. | `/alterego archmage`<br>`/persona archmage` |
| <img src="assets/hardboiled_detective.png" width="120" alt="Hardboiled Detective"> | **🕶️ Detective Hardboiled**<br>(Hardboiled Detective) | Un detective cínico que trata el código como una escena del crimen lluviosa. Sigue las trazas de pila como pistas para atrapar al culpable (bug). | `/alterego detective`<br>`/persona detective` |
| <img src="assets/muscle_coach.png" width="120" alt="Muscle Coding Coach"> | **🏋️ Entrenador de Musculación**<br>(Muscle Coach) | Un entrenador de gimnasio hiperactivo que grita en mayúsculas, definiendo el código duplicado como "pérdida de músculo" y el refactoring como "ganancias". | `/alterego muscle`<br>`/persona muscle` |

---

## 🚀 2. Instalación

Sigue las guías a continuación para configurar el paquete de habilidades AlterEgo según tu asistente de programación y sistema operativo.

### Método A: Usuarios de Cursor
1. Copia el archivo [.cursorrules](.cursorrules) de este repositorio al directorio raíz de tu proyecto.
2. Llama al personaje deseado a través del panel de chat.

### Método B: Usuarios de Claude Code
1. Registra las reglas en tu prompt del sistema o instrucciones personalizadas usando la plantilla [claudefile](claudefile) (asegúrate de actualizar con tu ruta local):
   ```text
   Instructions: Always check for `<your-local-path-to-repo>/SKILL.md` to format your persona responses when triggered.
   ```

### Método C: Antigravity y arneses de agentes compatibles (Recomendado)
Puedes desplegar automáticamente el archivo [SKILL.md](SKILL.md) en tu directorio de plugins usando nuestros instaladores de script.

#### **macOS / Linux (Bash o Zsh)**
Ejecuta el script instalador:
```bash
./install.sh
```
*(Configuración manual alternativa: `mkdir -p ~/.config/antigravity/plugins/alterego-dev-companion/skills && cp SKILL.md ~/.config/antigravity/plugins/alterego-dev-companion/skills/`)*

#### **Windows (PowerShell)**
Ejecuta el script instalador:
```powershell
.\install.ps1
```
*(Configuración manual alternativa: `New-Item -ItemType Directory -Force -Path "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills"; Copy-Item -Path "SKILL.md" -Destination "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills\"`)*

#### **Windows (Símbolo del sistema - CMD)**
Configuración manual:
```cmd
mkdir "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills"
copy SKILL.md "%APPDATA%\antigravity\plugins\alterego-dev-companion\skills\"
```

---

## 💬 3. Uso y ejemplos (Usage & Demo)

Una vez configurado, puedes invocar a cualquier personaje usando el **comando de activación y el nombre del personaje** durante las sesiones de chat.

> **Ejemplo de llamada**: "Activa el personaje de barista y mira el error en este código." o `/alterego barista refactoriza este código`

### 🗣️ Protocolo de salida
Todas las respuestas generadas bajo esta habilidad se dividen estrictamente en tres secciones:
1. **🗣️ [Nombre del Personaje] Spoke**: Diálogo del personaje y juego de rol dramático/humorístico.
2. **🛠️ Serious Engineering Take**: Puntos clave que detallan los problemas técnicos (causas raíz, optimizaciones).
3. **💻 Refactored Code**: Código refactorizado y listo para ser copiado.

### 💡 Ejemplo de simulación en vivo
* **Cuando Barista de Sanación (`/alterego barista`) está activada**:
  > **🗣️ Healing Barista Spoke**
  > ¡Hola! Por favor, quita las manos del teclado por un segundo y disfruta de esta taza tibia de té de manzanilla que preparé para ti. ☕ Has trabajado muy duro programando hoy. ¡La lógica que escribiste es muy intuitiva! Sin embargo, si `target_id` no se encuentra y devuelve `None`, podría causar fallos inesperados más adelante. ¿Lo solucionamos juntos para hacerlo más seguro?
  > 
  > **🛠️ Serious Engineering Take**
  > - Falta de validaciones de seguridad o controladores de retorno de diccionarios predeterminados cuando no se encuentra `target_id`.
  > 
  > **💻 Refactored Code**
  > ```python
  > def find_user(users, target_id):
  >     return next((u for u in users if u.get('id') == target_id), None)
  > ```

---

## 🛠️ 4. Referencia técnica y estructura de archivos

Este repositorio está optimizado para que los agentes de IA analicen fácilmente las directrices definidas en `SKILL.md`.

### Estructura de archivos
* [SKILL.md](SKILL.md): Planos principales de los personajes, reglas de comportamiento, definiciones de tono multilingüe y contratos de formato.
* [.cursorrules](.cursorrules): Asignación de instrucciones del sistema para Cursor.
* [claudefile](claudefile): Directrices del prompt del sistema para Claude Code.
* [assets/](assets/): Ilustraciones visuales de cada uno de los 8 personajes de desarrollo.
