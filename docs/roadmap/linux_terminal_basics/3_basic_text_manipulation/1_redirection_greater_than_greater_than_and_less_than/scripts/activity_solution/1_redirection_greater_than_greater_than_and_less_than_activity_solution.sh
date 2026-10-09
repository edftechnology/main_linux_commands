#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
output_file="$temp_root/result.txt"
printf 'um\n' > "$output_file"
printf 'dois\n' >> "$output_file"
cat < "$output_file"
test "$(wc -l < "$output_file")" -eq 2
