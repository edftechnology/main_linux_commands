#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'ação rápida\nlinha dois\n' > "$temp_root/text.txt"
wc "$temp_root/text.txt"
printf 'caracteres: '; wc -m < "$temp_root/text.txt"
