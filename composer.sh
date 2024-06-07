#!/usr/bin/env sh

set -e

docker-utils-run-in-docker composer:latest composer . false "$@"
