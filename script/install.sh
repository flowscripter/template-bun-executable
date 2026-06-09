#!/bin/sh

set -e

ARCH=$(uname -m)
case "$ARCH" in
  x86_64)
    ARCH_SUFFIX="x64"
    ;;
  aarch64|arm64)
    ARCH_SUFFIX="arm64"
    ;;
  *)
    echo "Unsupported architecture: $ARCH"
    exit 1
    ;;
esac

URL="https://github.com/flowscripter/template-bun-executable/releases/latest/download/template-bun-executable_Linux_${ARCH_SUFFIX}.zip"

TMP_DIR=$(mktemp -d)
cd "$TMP_DIR"

echo "Downloading template-bun-executable..."
curl -fsSL "$URL" -o executable.zip
unzip executable.zip

chmod +x template-bun-executable
sudo mv template-bun-executable /usr/local/bin/

cd -
rm -rf "$TMP_DIR"

echo "Installation complete! Run 'template-bun-executable' to get started."
