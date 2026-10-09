#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
for number in {1..8}; do printf 'linha %s\n' "$number"; done > "$temp_root/app.log"
head -n 3 "$temp_root/app.log"
tail -n 2 "$temp_root/app.log"
cat "$temp_root/app.log"
