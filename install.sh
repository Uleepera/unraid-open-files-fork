#!/bin/bash

PLUGIN="open.files.plus"
PLUGIN_DIR="/usr/local/emhttp/plugins/$PLUGIN"

echo "[INSTALL.SH] Starting Open Files Plus installation"
echo "[INSTALL.SH] Target install directory: $PLUGIN_DIR"

# Ensure the plugin directory exists
mkdir -p "$PLUGIN_DIR"
echo "[INSTALL.SH] Created plugin directory (if missing)"

# Debug: Show current working directory and its contents
echo "[INSTALL.SH] Current directory: $(pwd)"
echo "[INSTALL.SH] Directory contents:"
ls -lah

# Copy assets
echo "[INSTALL.SH] Copying files to $PLUGIN_DIR..."
cp -vR assets icons include scripts *.page *.md LICENSE "$PLUGIN_DIR"

# Optional: Check for required files
echo "[INSTALL.SH] Verifying required files..."
REQUIRED_FILES=("OpenFilesPlus.page" "include/OpenFilesPlus.php")
for file in "${REQUIRED_FILES[@]}"; do
  if [[ ! -f "$file" && ! -f "./$file" ]]; then
    echo "[INSTALL.SH][ERROR] Missing required file: $file"
    exit 1
  fi
done

# Confirm completion
echo "[INSTALL.SH] Plugin installation complete."
exit 0
