#!/bin/bash
set -e
. scripts/check_env.sh

echo "CppSample dir:" "$CPPSAMPLE_DIR"
rm -rf "$CPPSAMPLE_DIR"
mkdir -p "$CPPSAMPLE_SOURCE_DIR"
git clone "$CPPSAMPLE_GIT_SOURCE" "$CPPSAMPLE_SOURCE_DIR"
cd "$CPPSAMPLE_SOURCE_DIR"; git checkout "$CPPSAMPLE_VERSION";
cd "$P300_ROOT_DIR"



