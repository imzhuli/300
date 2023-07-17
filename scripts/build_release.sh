set -e

. scripts/_check_env.sh
export BUILD_ENV_CHECKED=true
export CMAKE_BUILD_TYPE=Release
export CMAKE_INSTALL_PREFIX="$P300_INSTALL_DIR/$CMAKE_BUILD_TYPE"

if [ "$1" = "" ]; then  # build all
    ./scripts/sub_build/001_CppSample.sh
    ./scripts/sub_build/100_Assets.sh
    exit
fi

if [ "$1" = "001" ]; then
    ./scripts/sub_build/001_CppSample.sh
    exit
fi

if [ "$1" = "100" ]; then
    ./scripts/sub_build/100_Assets.sh
    exit
fi

echo "nothing to build for " "$1"
