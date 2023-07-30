#!/bin/bash
set -e

echo "Building Glfw BuildType=$CMAKE_BUILD_TYPE"
if [ "$BUILD_ENV_CHECKED" != true ] ; then
    echo "Build env not setup"
    exit 1
fi

# remove old install
rm -rf "$CMAKE_INSTALL_PREFIX"/include/glfw
rm -rf "$CMAKE_INSTALL_PREFIX"/lib/libglfw3.a

# build
CMAKE_FLAGS=""
GLFW_BUILD_DIR="$GLFW_DIR/build"

rm -rf "$GLFW_BUILD_DIR"
mkdir -p "${GLFW_BUILD_DIR}"
cd "${GLFW_BUILD_DIR}"

cmake -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX" ${CMAKE_FLAGS} "$GLFW_SOURCE_DIR"
make -j --

# new installation
make install

