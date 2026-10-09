#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/subdir"
printf x > "$temp_root/alvo.txt"
printf y > "$temp_root/subdir/outro.txt"
find "$temp_root" -type f -print
rm -- "$temp_root/alvo.txt"
test ! -e "$temp_root/alvo.txt"
find "$temp_root" -print
