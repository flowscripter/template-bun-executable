#!/bin/sh

set -e  # Exit on error

# Define the download URL
URL="https://github.com/flowscripter/template-bun-executable/releases/latest/download/template-bun-executable_Linux_x86_64.zip"

# Create a temporary directory
TMP_DIR=$(mktemp -d)
cd "$TMP_DIR"

# Download and extract
echo "Downloading template-bun-executable..."
curl -fsSL "$URL" -o executable.zip
unzip executable.zip

# Install
chmod +x template-bun-executable
sudo mv template-bun-executable /usr/local/bin/

# Clean up
cd -
rm -rf "$TMP_DIR"

echo "✅ Installation complete! Run 'template-bun-executable' to get started."
