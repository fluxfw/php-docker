#!/usr/bin/env sh

set -e

run-in-docker composer:latest composer "$@"
