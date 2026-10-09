#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/a" "$temp_root/b"
printf 'log\n' > "$temp_root/a/app.log"
touch "$temp_root/b/empty.txt"
find "$temp_root" -type f -name '*.log' -print
find "$temp_root" -type f -empty -print
