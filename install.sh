#!/bin/bash

# Exit on error
set -e

# Define variables
BINARY_URL="https://github.com/decagondev/ft-install/raw/refs/heads/main/rc1/FocusTrackerRC1"
INSTALL_PATH="/usr/local/bin/focustracker"
TEMP_FILE="/tmp/focustracker"

echo "Installing focustracker..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "This script needs to be run as root (sudo)"
    exit 1
fi

# Download the binary
echo "Downloading binary..."
curl -L -o "$TEMP_FILE" "$BINARY_URL"

# Install dependencies
echo "Installing dependencies..."
apt update
apt install -y \
    libgtk-3-0 \
    libayatana-appindicator3-1 \
    libnotify4 \
    libx11-6 \
    libxrandr2 \
    libxss1 \
    libxext6 \
    libsecret-1-0 \
    libcurl4 \
    libgcrypt20

# Move binary to install location
echo "Installing binary..."
mv "$TEMP_FILE" "$INSTALL_PATH"

# Make binary executable
chmod +x "$INSTALL_PATH"

# Verify installation
if command -v focustracker >/dev/null 2>&1; then
    echo "focustracker installed successfully!"
    echo "You can now run it by typing 'focustracker' in your terminal"
else
    echo "Installation failed"
    exit 1
fi
