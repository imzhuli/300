#!/bin/bash
set -e

export CMAKE_INSTALL_PREFIX="$P300_INSTALL_DIR/$CMAKE_BUILD_TYPE"

f_post_build()
{
    rm -rf "$CMAKE_INSTALL_PREFIX"/lib/cmake
    rm -rf "$CMAKE_INSTALL_PREFIX"/lib/pkgconfig
}

if [ "$1" = "" ]; then  # build all
    ./scripts/sub_build/000_Assets.sh
    ./scripts/sub_build/001_CppSample.sh
    ./scripts/sub_build/005_Glfw.sh
    ./scripts/sub_build/010_XEngine.sh

    f_post_build;exit;
fi

if [ "$1" = "000" ]; then
    ./scripts/sub_build/000_Assets.sh
    f_post_build;exit;
fi

if [ "$1" = "001" ]; then
    ./scripts/sub_build/001_CppSample.sh
    f_post_build;exit;
fi

if [ "$1" = "005" ]; then
    ./scripts/sub_build/005_Glfw.sh
    f_post_build;exit;
fi

if [ "$1" = "010" ]; then
    ./scripts/sub_build/010_XEngine.sh
    f_post_build;exit;
fi
