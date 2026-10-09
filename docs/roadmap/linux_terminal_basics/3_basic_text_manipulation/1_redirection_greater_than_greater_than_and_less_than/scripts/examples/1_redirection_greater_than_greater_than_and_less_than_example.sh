#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/out.txt"
printf 'primeira\n' > "$file_path"
printf 'segunda\n' >> "$file_path"
cat < "$file_path"
printf 'linhas: '; wc -l < "$file_path"
