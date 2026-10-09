#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/sub"; touch "$temp_root/a.log" "$temp_root/sub/b.txt"; find "$temp_root" -type f -name '*.log' -print
printf "\nValidation: command completed.\n"
