#!/usr/bin/env sh

set -e

#docker pull composer:latest

docker run --rm -it -u `id -u`:`id -g` -v "$PWD":/code -w /code --entrypoint composer composer:latest "$@"
