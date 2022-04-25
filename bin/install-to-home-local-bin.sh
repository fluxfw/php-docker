#!/usr/bin/env sh

set -e

if [ -z `command -v install-project-to-home-local-bin` ]; then
    echo "Please install flux-shell-utils"
    exit 1
fi

install-project-to-home-local-bin "`dirname "$0"`/.."
