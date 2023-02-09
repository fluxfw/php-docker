#!/usr/bin/env sh

set -e

run-in-docker php:cli-alpine sh "$@"
