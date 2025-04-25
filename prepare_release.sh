#!/bin/bash

set -e

# === CONFIG ===
VERSION="$1"
APP_NAME="GitStreak"
APP_DIR="build/${APP_NAME}.app"
ZIP_NAME="${APP_NAME}-${VERSION}.zip"
ZIP_PATH="build/${ZIP_NAME}"
CASK_FILE="GitStreak.rb"

# === 1. Package the app ===
echo "📦 Packaging ${APP_DIR} into ${ZIP_PATH}..."
ditto -c -k --sequesterRsrc --keepParent "$APP_DIR" "$ZIP_PATH"

# === 2. Get SHA256 ===
echo "🔐 Calculating SHA256..."
SHA=$(shasum -a 256 "$ZIP_PATH" | awk '{ print $1 }')
echo "✅ SHA256: $SHA"

# === 3. Update the Cask file ===
echo "✍️  Updating ${CASK_FILE}..."
sed -i '' "s/^  version \".*\"/  version \"${VERSION}\"/" "$CASK_FILE"
sed -i '' "s/^  sha256 \".*\"/  sha256 \"${SHA}\"/" "$CASK_FILE"

echo "✅ Done! ${CASK_FILE} updated with version ${VERSION} and SHA ${SHA}"
