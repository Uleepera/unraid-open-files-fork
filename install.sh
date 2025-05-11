#!/bin/bash

PLUGIN="open.files"
PLUGIN_DIR="/usr/local/emhttp/plugins/$PLUGIN"

echo "[Open Files Installer] Installing to: $PLUGIN_DIR"

# Make sure this script is executable
chmod +x "$(realpath "$0")"

# Create the plugin destination directory
mkdir -p "$PLUGIN_DIR"

# Print working directory and contents for debug
echo "[Open Files Installer] Current directory: $(pwd)"
echo "[Open Files Installer] Contents:"
ls -lah

# Copy files
cp -R assets icons include scripts *.page *.md LICENSE "$PLUGIN_DIR"

echo "[Open Files Installer] Copy complete."
exit 0
