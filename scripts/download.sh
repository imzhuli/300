#!/bin/bash
set -e
. scripts/_check_env.sh

f_001_CppSample()
{
    echo "CppSample dir: $CPPSAMPLE_DIR"
    rm -rf "$CPPSAMPLE_DIR"
    mkdir -p "$CPPSAMPLE_SOURCE_DIR"
    git clone "$CPPSAMPLE_GIT_SOURCE" "$CPPSAMPLE_SOURCE_DIR"
    cd "$CPPSAMPLE_SOURCE_DIR"; git checkout "$CPPSAMPLE_VERSION";
    cd "$P300_ROOT_DIR"
}

f_100_Assets()
{
    # fonts
    echo "Assets/font dir: $ASSETS_FONT_DIR"
    rm -rf "$ASSETS_FONT_DIR"
    mkdir -p "$ASSETS_FONT_DIR"
    git clone "$ASSETS_FONT_GIT_SOURCE" "$ASSETS_FONT_SOURCE_DIR"
    cd "$ASSETS_FONT_SOURCE_DIR"; git checkout "$ASSETS_FONT_VERSION";
    cd "$P300_ROOT_DIR"
}

if [ "$1" = "" ]; then
    f_001_CppSample
    f_100_Assets
    exit
fi

if [ "$1" = "001" ]; then
    f_001_CppSample
    exit
fi

if [ "$1" = "100" ]; then
    f_100_Assets
    exit
fi






