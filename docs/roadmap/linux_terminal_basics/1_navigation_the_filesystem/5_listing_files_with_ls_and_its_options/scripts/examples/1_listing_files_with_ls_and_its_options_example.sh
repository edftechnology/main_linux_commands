#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
touch "$temp_root/visivel.txt" "$temp_root/.anotacao"
ls -lah -- "$temp_root"
