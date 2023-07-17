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
export P300_DEPENDENCY_DIR="$P300_INSTALL_DIR"

export CPPSAMPLE_GIT_SOURCE="git@github.com:imzhuli/CppSample"
export CPPSAMPLE_VERSION="1b0275c"
export CPPSAMPLE_DIR="$P300_DOWNLOAD_SOURCE_DIR/001"
export CPPSAMPLE_SOURCE_DIR="$CPPSAMPLE_DIR/vcs"

