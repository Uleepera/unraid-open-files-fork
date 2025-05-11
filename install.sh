#!/bin/bash

PLUGIN="open.files"
PLUGIN_DIR="/usr/local/emhttp/plugins/$PLUGIN"

# Create destination directory if it doesn't exist
mkdir -p "$PLUGIN_DIR"

# Copy all plugin contents to the destination
cp -R $(pwd)/* "$PLUGIN_DIR"

# Clean up any temporary files if needed (optional)
# rm -rf /tmp/...

exit 0
