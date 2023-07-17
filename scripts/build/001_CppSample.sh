#!/bin/bash
set -e

echo "Building CppSample"
if [ "$BUILD_ENV_CHECKED" != true ] ; then
    echo "Build env not setup"
    exit
fi

echo "BuildType=$CMAKE_BUILD_TYPE"
CMAKE_FLAGS="--no-warn-unused-cli -Wno-dev"

CPPSAMPLE_BUILD_DIR="$CPPSAMPLE_DIR/build"
rm -rf "$CPPSAMPLE_BUILD_DIR"
mkdir -p "${CPPSAMPLE_BUILD_DIR}"
cd "${CPPSAMPLE_BUILD_DIR}"

cmake -DCMAKE_INSTALL_PREFIX=$CMAKE_INSTALL_PREFIX ${CMAKE_FLAGS} "$CPPSAMPLE_SOURCE_DIR"
make -j --
make install;

