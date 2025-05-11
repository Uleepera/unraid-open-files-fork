#!/bin/bash

PLUGIN="open.files"
PLUGIN_DIR="/usr/local/emhttp/plugins/$PLUGIN"

# Make sure this script is executable (self-healing if run directly)
chmod +x "$(realpath "$0")"

# Create the plugin destination directory
mkdir -p "$PLUGIN_DIR"

# Copy all relevant plugin content
cp -R assets icons include scripts *.page *.md LICENSE "$PLUGIN_DIR"

exit 0
