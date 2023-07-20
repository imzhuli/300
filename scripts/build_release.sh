set -e
. scripts/_check_env.sh

export BUILD_ENV_CHECKED=true
export CMAKE_BUILD_TYPE=Release

scripts/_internal_build.sh "$1"
