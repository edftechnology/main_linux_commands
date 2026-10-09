#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'ação\n' > "$temp_root/text.txt"; printf 'bytes='; wc -c < "$temp_root/text.txt"; printf 'characters='; wc -m < "$temp_root/text.txt"
printf "\nValidation: command completed.\n"
