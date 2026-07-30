#!/bin/bash
# OpenCode Skills Setup Script for Linux/macOS
# This script copies the .opencode folder to the current directory

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_PATH="$SCRIPT_DIR/../.opencode"
TARGET_PATH="${1:-$(pwd)}"
TARGET_OPENCODE="$TARGET_PATH/.opencode"

echo "OpenCode Skills Setup"
echo "===================="
echo ""

if [ ! -d "$SOURCE_PATH" ]; then
    echo "Error: Source .opencode folder not found at: $SOURCE_PATH"
    exit 1
fi

if [ -d "$TARGET_OPENCODE" ]; then
    read -p ".opencode already exists in target. Merge? (y/n): " choice
    if [ "$choice" != "y" ]; then
        echo "Setup cancelled."
        exit 0
    fi
    cp -rf "$SOURCE_PATH/skills/"* "$TARGET_OPENCODE/skills/"
    cp -rf "$SOURCE_PATH/agents/"* "$TARGET_OPENCODE/agents/"
    cp -rf "$SOURCE_PATH/commands/"* "$TARGET_OPENCODE/commands/"
    echo "Merged skills, agents, and commands into existing .opencode folder."
else
    cp -r "$SOURCE_PATH" "$TARGET_OPENCODE"
    echo "Copied .opencode folder to: $TARGET_OPENCODE"
fi

echo ""
echo "Setup complete!"
echo "Restart OpenCode to load the new configuration."
