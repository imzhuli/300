#!/bin/bash
set -e

CURR_DIR=`pwd`
TAG_FILE="$CURR_DIR/300.tag"

if [ -f "$TAG_FILE" ]; then
    echo "Tag file found, root_dir=$CURR_DIR"
else
    echo "Tag file not found!"
    exit
fi

export P300_ROOT_DIR="$CURR_DIR"
export P300_BUILD_DIR="$P300_ROOT_DIR/build"
export P300_INSTALL_DIR="$P300_BUILD_DIR/install"
export P300_DOWNLOAD_3RD_DIR="$P300_BUILD_DIR/3rd"

export CPPSAMPLE_GIT_SOURCE="git@github.com:imzhuli/CppSample"
export CPPSAMPLE_VERSION="1b0275c"
export CPPSAMPLE_DIR="$P300_DOWNLOAD_3RD_DIR/001"
export CPPSAMPLE_SOURCE_DIR="$CPPSAMPLE_DIR/vcs"

