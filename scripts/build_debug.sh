set -e
. scripts/_check_env.sh

export BUILD_ENV_CHECKED=true
export CMAKE_BUILD_TYPE=Debug

scripts/_internal_build.sh "$1"
