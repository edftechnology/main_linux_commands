#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/nota.txt"
touch -- "$file_path"
printf 'Inicial: '; stat -c '%s bytes' "$file_path"
printf 'preservado\n' > "$file_path"
touch -- "$file_path"
cat "$file_path"
