#!/bin/bash
set -e

echo "Building XEngine BuildType=$CMAKE_BUILD_TYPE"
if [ "$BUILD_ENV_CHECKED" != true ] ; then
    echo "Build env not setup"
    exit 1
fi

export X_INCLUDE_DIRS="$CMAKE_INSTALL_PREFIX"/include
export X_LIBRARY_DIRS="$CMAKE_INSTALL_PREFIX"/lib
export X_LIBRARIES=xel

# remove old install
rm -rf "$CMAKE_INSTALL_PREFIX"/include/xel_engine
rm -rf "$CMAKE_INSTALL_PREFIX"/lib/libxel_engine.a

# build
CMAKE_FLAGS="--no-warn-unused-cli -Wno-dev -DXE_OPTION_STATIC=true -DX_INCLUDE_DIRS='$X_INCLUDE_DIRS' -DX_LIBRARY_DIRS='$X_LIBRARY_DIRS' -DX_LIBRARIES='$X_LIBRARIES' "
XENGINE_BUILD_DIR="$XENGINE_DIR/build"

rm -rf "$XENGINE_BUILD_DIR"
mkdir -p "${XENGINE_BUILD_DIR}"
cd "${XENGINE_BUILD_DIR}"

cmake -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX" ${CMAKE_FLAGS} "$XENGINE_SOURCE_DIR/source"
make -j --

# new installation
make install

