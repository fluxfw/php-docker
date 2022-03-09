#!/usr/bin/env sh

set -e

if [ -z `command -v run-in-docker` ]; then
    echo "Please install flux-docker-utils"
    exit 1
fi

run-in-docker php:cli-alpine php "$@"
