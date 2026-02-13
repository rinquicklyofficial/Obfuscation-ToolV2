#!/bin/bash

# ==============================
# Setup Script for Obfuscation-ToolV2
# Author: Rin Quickly
# ==============================

echo "Starting setup for Obfuscation Tool V2..."

# Detect OS
OS=$(uname)
echo "Detected OS: $OS"

# Update package manager (Termux/Linux)
if [[ "$OS" == "Linux" ]] || [[ "$OS" == "Android" ]]; then
    echo "Updating packages..."
    if command -v pkg &> /dev/null; then
        # Termux
        pkg update -y && pkg upgrade -y
        pkg install python git -y
    else
        # Linux
        sudo apt update -y && sudo apt upgrade -y
        sudo apt install python3 python3-pip git -y
    fi
fi

# Ensure pip is up to date
echo "Upgrading pip..."
python3 -m pip install --upgrade pip

# Install required Python packages
echo "Installing dependencies..."
pip install rich

# Make the Python script executable
echo "Setting executable permission for Obfuscator_ToolV2.py..."
chmod +x Obfuscator_ToolV2.py

# Optional: test dummy script
echo "Creating dummy test script..."
echo 'print("Hello from test script")' > test_script.py

echo "Running obfuscator on dummy script (level 1)..."
python3 Obfuscator_ToolV2.py test_script.py obfuscated_test.py 1

echo "Running obfuscated script..."
python3 obfuscated_test.py

# Clean up
rm -f test_script.py obfuscated_test.py

echo "Setup complete! You can now run Obfuscator_ToolV2.py with your scripts."
