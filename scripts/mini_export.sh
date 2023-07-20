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
