#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/arquivados"
for number in 1 2 3; do printf '%s\n' "$number" > "$temp_root/file_$number.txt"; done
for file_path in "$temp_root"/file_*.txt; do
  target="$temp_root/arquivados/${file_path##*/}"
  test ! -e "$target" || { printf 'Destino já existe\n' >&2; exit 1; }
  mv -- "$file_path" "$target"
done
ls -1 "$temp_root/arquivados"
