#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/nota.txt"
printf 'Título\n\nPrimeira ideia.\n' > "$file_path"
printf 'Abra: nano %q ou vim %q\n' "$file_path" "$file_path"
cat "$file_path"
