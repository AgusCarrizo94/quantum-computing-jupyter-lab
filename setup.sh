#!/bin/bash

set -e  # Exit on error

echo "═══════════════════════════════════════════════════════════"
echo "🚀 Starting JupyterLab Environment Setup"
echo "═══════════════════════════════════════════════════════════"

# Update package list and install vim and curl
echo ""
echo "📦 [1/6] Updating package list and installing system tools..."
apt-get update -qq && apt-get install -y -qq nvim curl > /dev/null 2>&1
echo "✅ System tools installed (nvim, curl)"

# Install Node.js and npm
echo ""
echo "📦 [2/6] Installing Node.js and npm..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - > /dev/null 2>&1
apt-get install -y nodejs > /dev/null 2>&1
echo "✅ Node.js $(node --version) and npm $(npm --version) installed"

# Install Gemini CLI globally
echo ""
echo "🤖 [3/6] Installing Google Gemini CLI..."
npm install -g @google/gemini-cli
echo "✅ Gemini CLI installed"

echo "🐍 [4/6] Checking Python installation..."
if ! command -v python3 &> /dev/null; then
    echo "Python3 not found. Installing..."
    # For Ubuntu/Debian
    sudo apt update
    sudo apt install -y python3 python3-venv python3-dev
else
    echo "✅ Python3 found: $(python3 --version)"
fi

echo "📦 [5/6] Installing pip..."
if ! command -v pip3 &> /dev/null; then
    curl -sS https://bootstrap.pypa.io/get-pip.py | python3
else
    echo "✅ pip found: $(pip3 --version)"
fi

echo "🛠️ [6/6] Installing uv..."
pip3 install --quiet --upgrade uv
echo "✅ uv installed: $(uv --version 2>/dev/null || echo 'installed')"

echo "🎉 All done!"

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "✨ Setup Complete! All tools are ready."
echo "═══════════════════════════════════════════════════════════"
echo ""