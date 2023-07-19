#!/bin/bash
set -e

if [ "$1" = "" ]; then  # build all
    ./scripts/sub_build/000_Assets.sh
    ./scripts/sub_build/001_CppSample.sh
    exit
fi

if [ "$1" = "000" ]; then
    ./scripts/sub_build/000_Assets.sh
    exit
fi

if [ "$1" = "001" ]; then
    ./scripts/sub_build/001_CppSample.sh
    exit
fi
