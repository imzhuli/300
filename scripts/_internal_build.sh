#!/bin/bash
set -e

export CMAKE_INSTALL_PREFIX="$P300_INSTALL_DIR/$CMAKE_BUILD_TYPE"

if [ "$1" = "" ]; then  # build all
    ./scripts/sub_build/000_Assets.sh
    ./scripts/sub_build/001_CppSample.sh
    ./scripts/sub_build/010_XEngine.sh
    exit
fi

if [ "$1" = "000" ]; then
    ./scripts/sub_build/000_Assets.sh
    exit
fi

if [ "$1" = "001" ]; then
    ./scripts/sub_build/001_CppSample.sh
    exit
fi

if [ "$1" = "010" ]; then
    ./scripts/sub_build/010_XEngine.sh
    exit
fi
