#!/bin/bash

# Create release archive.

set -euo pipefail

files=(
  tdlib/lib/
  tdlib/include/
  third_party/
  BUILD
  BUILD.tdlib_examples
  Dockerfile
  README.md
  WORKSPACE
  build.sh
  create_release.sh
)
tar -cvzf tdlib.tar.gz ${files[@]}
