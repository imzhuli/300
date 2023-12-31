#!/bin/bash
set -e

CURR_DIR=`pwd`
TAG_FILE="$CURR_DIR/300.tag"

if [ -f "$TAG_FILE" ]; then
    echo "Tag file found, root_dir=$CURR_DIR"
else
    echo "Tag file not found!"
    exit 1
fi

export P300_ROOT_DIR="$CURR_DIR"
export P300_BUILD_DIR="$P300_ROOT_DIR/build"
export P300_INSTALL_DIR="$P300_BUILD_DIR/install"
export P300_DOWNLOAD_SOURCE_DIR="$P300_BUILD_DIR/src"

export ASSETS_FONT_GIT_SOURCE="git@github.com:imzhuli/300_fonts"
export ASSETS_FONT_VERSION="a69442b"
export ASSETS_FONT_DIR="$P300_DOWNLOAD_SOURCE_DIR/000/fonts"
export ASSETS_FONT_SOURCE_DIR="$ASSETS_FONT_DIR/vcs"

export CPPSAMPLE_GIT_SOURCE="git@github.com:imzhuli/CppSample"
export CPPSAMPLE_VERSION="HEAD"
export CPPSAMPLE_DIR="$P300_DOWNLOAD_SOURCE_DIR/001"
export CPPSAMPLE_SOURCE_DIR="$CPPSAMPLE_DIR/vcs"

export GLFW_GIT_SOURCE="https://github.com/glfw/glfw.git"
export GLFW_TAG="3.3.8"
export GLFW_DIR="$P300_DOWNLOAD_SOURCE_DIR/005"
export GLFW_SOURCE_DIR="$GLFW_DIR/vcs"

export XENGINE_GIT_SOURCE="git@github.com:imzhuli/300_engine"
export XENGINE_VERSION="HEAD"
export XENGINE_DIR="$P300_DOWNLOAD_SOURCE_DIR/010"
export XENGINE_SOURCE_DIR="$XENGINE_DIR/vcs"
