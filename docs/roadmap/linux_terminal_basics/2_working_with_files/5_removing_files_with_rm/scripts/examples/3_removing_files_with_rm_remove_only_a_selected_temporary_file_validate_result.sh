#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/remove.tmp" "$temp_root/keep.txt"; find "$temp_root" -name '*.tmp' -print -delete; test -f "$temp_root/keep.txt"
printf "\nValidation: command completed.\n"
