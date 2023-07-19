set -e
. scripts/_check_env.sh

export BUILD_ENV_CHECKED=true
export CMAKE_BUILD_TYPE=Release
export CMAKE_INSTALL_PREFIX="$P300_INSTALL_DIR/$CMAKE_BUILD_TYPE"

scripts/_internal_build.sh "$1"
