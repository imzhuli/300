#!/bin/bash
set -e

echo "Building CppSample BuildType=$CMAKE_BUILD_TYPE"
if [ "$BUILD_ENV_CHECKED" != true ] ; then
    echo "Build env not setup"
    exit 1
fi

# setup & remove old install
ASSETS_INSTALL_DIR="$P300_INSTALL_DIR/Assets"
rm -rf "$ASSETS_INSTALL_DIR"

# copy fonts
ASSETS_FONT_INSTALL_DIR="$ASSETS_INSTALL_DIR/fonts"
mkdir -p "$ASSETS_FONT_INSTALL_DIR"
cp "$ASSETS_FONT_SOURCE_DIR/"*.woff2 "$ASSETS_FONT_INSTALL_DIR/"
