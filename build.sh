#!/bin/bash

# Build TDLib in Docker and copy build artifacts to the local directory.

set -euo pipefail

docker build -t tdlib .
docker create --name tdlib-tmp tdlib
docker cp tdlib-tmp:/install/. tdlib/
docker rm tdlib-tmp
