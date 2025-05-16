#!/bin/bash
set -eux  # Exit on error, undefined var, and echo each command

PLUGIN="open.files.plus"
PLUGIN_DIR="/usr/local/emhttp/plugins/${PLUGIN}"
BOOT_DIR="/boot/config/plugins/${PLUGIN}"
CWD="$(pwd)"

echo "[INSTALL] Starting Open Files Plus install script..."
echo "[INSTALL] Current working directory: $CWD"

# Ensure plugin target directory exists
if [ ! -d "$PLUGIN_DIR" ]; then
  echo "[INSTALL] Creating plugin directory: $PLUGIN_DIR"
  mkdir -p "$PLUGIN_DIR"
else
  echo "[INSTALL] Plugin directory already exists: $PLUGIN_DIR"
fi

# List contents before copying
echo "[INSTALL] Contents before copy:"
ls -lAh "$CWD"

# Copy files
cp -v -R "$CWD/assets" "$PLUGIN_DIR/"
cp -v -R "$CWD/icons" "$PLUGIN_DIR/"
cp -v -R "$CWD/include" "$PLUGIN_DIR/"
cp -v -R "$CWD/scripts" "$PLUGIN_DIR/"

for f in "$CWD"/*.page "$CWD"/*.md "$CWD/LICENSE"; do
  if [ -f "$f" ]; then
    cp -v "$f" "$PLUGIN_DIR/"
  fi
done

# Confirm copy result
echo "[INSTALL] Final contents of plugin directory:"
ls -lAh "$PLUGIN_DIR"

echo "[INSTALL] Open Files Plus plugin installed successfully."
exit 0
