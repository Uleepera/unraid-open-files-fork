#!/bin/bash

PLUGIN="open.files.plus"
PLUGIN_DIR="/usr/local/emhttp/plugins/$PLUGIN"

echo "[Open Files Plus Installer] Installing to: $PLUGIN_DIR"

# Ensure this script is executable
chmod +x "$(realpath "$0")"

# Create the plugin destination directory
mkdir -p "$PLUGIN_DIR"

# Print working directory and contents for debug
echo "[Open Files Plus Installer] Current directory: $(pwd)"
echo "[Open Files Plus Installer] Contents:"
ls -lah

# Copy plugin assets
cp -R assets icons include scripts *.page *.md LICENSE "$PLUGIN_DIR"

# Create symlink so it shows up under Tools tab
ln -sf "$PLUGIN_DIR/OpenFilesPlus.page" "$PLUGIN_DIR/SystemInformation.page"
echo "[Open Files Plus Installer] Symlink created: SystemInformation.page → OpenFilesPlus.page"

echo "[Open Files Plus Installer] Copy complete."
exit 0
