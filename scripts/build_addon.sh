#!/bin/bash

readonly SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly CPM_CACHE_DIR="${SCRIPT_DIR}/../.cpm-cache"

export CPM_SOURCE_CACHE="${CPM_CACHE_DIR}"

pnpm install && pnpm run build

