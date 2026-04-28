#!/bin/bash
set -e

REPO_URL="https://github.com/kutzki/antigravity-ads.git"
INSTALL_DIR="$HOME/.gemini/antigravity/skills/antigravity-ads"
TEMP_DIR=$(mktemp -d)

echo -e "\033[0;36mInstalling antigravity-ads...\033[0m"

if [ -d "$INSTALL_DIR" ]; then
    echo -e "\033[0;33mExisting installation found. Removing...\033[0m"
    rm -rf "$INSTALL_DIR"
fi

echo -e "\033[0;36mCloning repository...\033[0m"
git clone --quiet "$REPO_URL" "$TEMP_DIR"

echo -e "\033[0;36mCopying skill to $INSTALL_DIR...\033[0m"
mkdir -p "$(dirname "$INSTALL_DIR")"
cp -r "$TEMP_DIR/skill" "$INSTALL_DIR"

echo -e "\033[0;36mInstalling Python dependencies...\033[0m"
if command -v python3 &> /dev/null; then
    python3 -m pip install -r "$TEMP_DIR/skill/requirements.txt" || true
elif command -v python &> /dev/null; then
    python -m pip install -r "$TEMP_DIR/skill/requirements.txt" || true
else
    echo -e "\033[0;33mPython not found. Please install Python for PDF/web scraping tools.\033[0m"
fi

echo -e "\033[0;36mCleaning up...\033[0m"
rm -rf "$TEMP_DIR"

echo -e "\033[0;32mInstallation complete! The antigravity-ads skill is now available.\033[0m"

