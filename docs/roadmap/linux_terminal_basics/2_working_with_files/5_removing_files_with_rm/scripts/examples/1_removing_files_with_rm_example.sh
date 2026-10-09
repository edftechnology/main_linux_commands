#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'temporario\n' > "$temp_root/apagar.txt"
find "$temp_root" -maxdepth 1 -type f -print
rm -- "$temp_root/apagar.txt"
test ! -e "$temp_root/apagar.txt"
