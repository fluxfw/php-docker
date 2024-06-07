#!/usr/bin/env sh

set -e

docker-utils-run-in-docker php:cli-alpine php . false "$@"
