#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/docs" "$temp_root/logs"
touch "$temp_root/docs/guia.txt" "$temp_root/logs/app.log"
find "$temp_root" -type f -name '*.txt' -print
