#!/bin/bash

readonly SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly CPM_CACHE_DIR="${SCRIPT_DIR}/../.cpm-cache"

# Export Threads for Make and Ninja
export MAKEFLAGS=-j$(nproc)
export PARALLEL_LEVEL=$(nproc)
export CPM_SOURCE_CACHE="${CPM_CACHE_DIR}"

pnpm install

