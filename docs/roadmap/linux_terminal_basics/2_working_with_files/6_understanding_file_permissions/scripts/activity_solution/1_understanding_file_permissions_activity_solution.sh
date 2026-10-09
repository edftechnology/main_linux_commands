#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/privado.txt"
printf 'conteudo\n' > "$file_path"
chmod 640 "$file_path"
test "$(stat -c %a "$file_path")" = 640
chmod u+x "$file_path"
test "$(stat -c %a "$file_path")" = 740
stat -c '%A (%a)' "$file_path"
