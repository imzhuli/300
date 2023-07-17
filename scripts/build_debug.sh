set -e

. scripts/_check_env.sh
export BUILD_ENV_CHECKED=true
export CMAKE_BUILD_TYPE=Debug
export CMAKE_INSTALL_PREFIX="$P300_INSTALL_DIR/$CMAKE_BUILD_TYPE"

if [ "$1" = "001" ]; then
    ./scripts/build/001_CppSample.sh
    exit
fi

# build all
./scripts/build/001_CppSample.sh
