#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/registro.txt"
touch -- "$file_path"
test -f "$file_path" && test ! -s "$file_path"
printf 'dado\n' > "$file_path"
touch -- "$file_path"
test "$(cat "$file_path")" = dado
