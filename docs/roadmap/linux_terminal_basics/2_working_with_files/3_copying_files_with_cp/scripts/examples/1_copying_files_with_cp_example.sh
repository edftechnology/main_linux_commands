#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/origem"
printf 'texto\n' > "$temp_root/origem/dados.txt"
cp -a -- "$temp_root/origem" "$temp_root/copia"
cmp "$temp_root/origem/dados.txt" "$temp_root/copia/dados.txt"
