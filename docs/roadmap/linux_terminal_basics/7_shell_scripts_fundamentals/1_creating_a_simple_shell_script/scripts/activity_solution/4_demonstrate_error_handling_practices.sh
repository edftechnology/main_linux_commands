#!/usr/bin/env bash
set -euo pipefail

require_file() {
  local file_path=${1:?Usage: require_file PATH}
  if [[ ! -f "$file_path" ]]; then
    printf 'Error: not a regular file: %s\n' "$file_path" >&2
    return 2
  fi
  printf 'Validated file: %s\n' "$file_path"
}

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'sample\n' > "$temp_root/input.txt"
require_file "$temp_root/input.txt"
