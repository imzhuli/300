set -e

. scripts/check_env.sh
export BUILD_ENV_CHECKED=true
export CMAKE_BUILD_TYPE=Debug
export CMAKE_INSTALL_PREFIX="$P300_INSTALL_DIR/$CMAKE_BUILD_TYPE"

./scripts/build/001_build_CppSample.sh
