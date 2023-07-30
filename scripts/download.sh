#!/bin/bash
set -e
. scripts/_check_env.sh

f_000_Assets()
{
    # fonts
    echo "Assets/font dir: $ASSETS_FONT_DIR"
    rm -rf "$ASSETS_FONT_DIR"
    mkdir -p "$ASSETS_FONT_DIR"
    git clone "$ASSETS_FONT_GIT_SOURCE" "$ASSETS_FONT_SOURCE_DIR"
    cd "$ASSETS_FONT_SOURCE_DIR"; git checkout "$ASSETS_FONT_VERSION";
    cd "$P300_ROOT_DIR"
}

f_001_CppSample()
{
    echo "CppSample dir: $CPPSAMPLE_DIR"
    rm -rf "$CPPSAMPLE_DIR"
    mkdir -p "$CPPSAMPLE_SOURCE_DIR"
    git clone "$CPPSAMPLE_GIT_SOURCE" "$CPPSAMPLE_SOURCE_DIR"
    cd "$CPPSAMPLE_SOURCE_DIR"; git checkout "$CPPSAMPLE_VERSION";
    cd "$P300_ROOT_DIR"
}

f_005_Glfw()
{
    echo "GLFW dir: $GLFW_DIR"
    rm -rf "$GLFW_DIR"
    mkdir -p "$GLFW_DIR"
    git clone --depth=1 --branch "$GLFW_TAG" "$GLFW_GIT_SOURCE" "$GLFW_SOURCE_DIR"
    cd "$P300_ROOT_DIR"
}

f_010_XEngine()
{
    echo "XEngine dir: $XENGINE_DIR"
    rm -rf "$XENGINE_DIR"
    mkdir -p "$XENGINE_SOURCE_DIR"
    git clone "$XENGINE_GIT_SOURCE" "$XENGINE_SOURCE_DIR"
    cd "$XENGINE_SOURCE_DIR"; git checkout "$XENGINE_VERSION";
    cd "$P300_ROOT_DIR"
}

if [ "$1" = "" ]; then
    f_000_Assets
    f_001_CppSample
    f_005_Glfw
    f_010_XEngine
    exit
fi

if [ "$1" = "000" ]; then
    f_000_Assets
    exit
fi

if [ "$1" = "001" ]; then
    f_001_CppSample
    exit
fi

if [ "$1" = "005" ]; then
    f_005_Glfw
    exit
fi

if [ "$1" = "010" ]; then
    f_010_XEngine
    exit
fi








