#!/bin/bash
set -e

# Configuration
REPO="wxtsky/CodeIsland"
CASK_FILE="Casks/codeisland.rb"

# Get latest release info
echo "Checking latest release from $REPO..."
LATEST_RELEASE=$(curl -s "https://api.github.com/repos/$REPO/releases/latest")
VERSION=$(echo "$LATEST_RELEASE" | grep '"tag_name":' | sed -E 's/.*"v?([^"]+)".*/\1/')

echo "Latest version: $VERSION"

# Get current version from cask
CURRENT_VERSION=$(grep 'version ' "$CASK_FILE" | sed -E 's/.*"(.*)".*/\1/')
echo "Current version: $CURRENT_VERSION"

if [ "$VERSION" = "$CURRENT_VERSION" ]; then
  echo "Already up to date!"
  exit 0
fi

echo "Update needed: $CURRENT_VERSION -> $VERSION"

# Download and calculate SHA256
DOWNLOAD_URL="https://github.com/$REPO/releases/download/v$VERSION/CodeIsland-$VERSION.dmg"
echo "Downloading from: $DOWNLOAD_URL"

SHA256=$(curl -sL "$DOWNLOAD_URL" | shasum -a 256 | cut -d' ' -f1)
echo "SHA256: $SHA256"

# Update cask file
sed -i.bak "s/version \".*\"/version \"$VERSION\"/" "$CASK_FILE"
sed -i.bak "s/sha256 \".*\"/sha256 \"$SHA256\"/" "$CASK_FILE"
rm -f "${CASK_FILE}.bak"

echo "Updated $CASK_FILE"
git diff "$CASK_FILE" || true
