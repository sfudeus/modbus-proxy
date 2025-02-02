#!/usr/bin/env bash

set -eu

docker buildx build --platform linux/amd64 --platform linux/arm/v7 --platform linux/arm64 -t "docker.io/sfudeus/modbus-proxy:latest" --push .

