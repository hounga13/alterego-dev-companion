#!/bin/bash
set -e

echo "🎭 AlterEgo-DevCompanion Installer for macOS / Linux"
echo "----------------------------------------------------"

# Define destination directory
DEST_DIR="$HOME/.config/antigravity/plugins/alterego-dev-companion/skills"

# Create destination directory if it doesn't exist
echo "Creating directory: $DEST_DIR"
mkdir -p "$DEST_DIR"

# Copy SKILL.md
if [ -f "SKILL.md" ]; then
  echo "Copying SKILL.md to $DEST_DIR..."
  cp SKILL.md "$DEST_DIR/"
  echo "✓ Successfully installed AlterEgo-DevCompanion!"
else
  echo "Error: SKILL.md not found in the current directory."
  echo "Please run this script from the project root."
  exit 1
fi
