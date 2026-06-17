#!/bin/bash
set -e

echo "🎭 AlterEgo-DevCompanion Installer for macOS / Linux"
echo "----------------------------------------------------"

# Define destination directory
DEST_DIR="$HOME/.config/antigravity/plugins/alterego-dev-companion/skills"
DEST_FILE="$DEST_DIR/SKILL.md"

# Create destination directory if it doesn't exist
if [ ! -d "$DEST_DIR" ]; then
  echo "Creating directory: $DEST_DIR"
  mkdir -p "$DEST_DIR"
fi

# Backup existing SKILL.md if it exists
if [ -f "$DEST_FILE" ]; then
  BACKUP_FILE="${DEST_FILE}.bak"
  echo "⚠️ Existing skill file found! Backing up to: $BACKUP_FILE"
  cp "$DEST_FILE" "$BACKUP_FILE"
fi

# Copy SKILL.md
if [ -f "../SKILL.md" ]; then
  echo "Copying SKILL.md to $DEST_DIR..."
  cp ../SKILL.md "$DEST_DIR/"
  echo "✓ Successfully installed AlterEgo-DevCompanion!"
else
  echo "Error: SKILL.md not found in the parent directory."
  echo "Please run this script from the project root or the bin directory."
  exit 1
fi
