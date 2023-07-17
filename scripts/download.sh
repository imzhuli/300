#!/bin/bash
set -e
. scripts/_check_env.sh

f_001()
{
    echo "CppSample dir:" "$CPPSAMPLE_DIR"
    rm -rf "$CPPSAMPLE_DIR"
    mkdir -p "$CPPSAMPLE_SOURCE_DIR"
    git clone "$CPPSAMPLE_GIT_SOURCE" "$CPPSAMPLE_SOURCE_DIR"
    cd "$CPPSAMPLE_SOURCE_DIR"; git checkout "$CPPSAMPLE_VERSION";
    cd "$P300_ROOT_DIR"
}

if [ "$1" = "" ]; then
    f_001
    exit
fi

if [ "$1" = "001" ]; then
    f_001
    exit
fi







