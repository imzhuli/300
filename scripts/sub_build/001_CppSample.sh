#!/bin/bash
set -e

echo "Building CppSample BuildType=$CMAKE_BUILD_TYPE"
if [ "$BUILD_ENV_CHECKED" != true ] ; then
    echo "Build env not setup"
    exit 1
fi

CMAKE_FLAGS="--no-warn-unused-cli -Wno-dev -DX_OPTION_STATIC=true"

CPPSAMPLE_BUILD_DIR="$CPPSAMPLE_DIR/build"
rm -rf "$CPPSAMPLE_BUILD_DIR"
mkdir -p "${CPPSAMPLE_BUILD_DIR}"
cd "${CPPSAMPLE_BUILD_DIR}"

cmake -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX" ${CMAKE_FLAGS} "$CPPSAMPLE_SOURCE_DIR"
make -j --

# remove old install
rm -rf "$CMAKE_INSTALL_PREFIX"/include/glm
rm -rf "$CMAKE_INSTALL_PREFIX"/include/rapidjson
rm -rf "$CMAKE_INSTALL_PREFIX"/include/xel
rm -rf "$CMAKE_INSTALL_PREFIX"/include/xel_ext
rm -rf "$CMAKE_INSTALL_PREFIX"/lib/libxel.a

# new installation
make install

