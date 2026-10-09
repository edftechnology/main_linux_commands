#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; target="$temp_root/input.txt"; if [[ -e $target ]]; then printf 'Present\n'; else printf 'Missing (expected initially)\n'; fi; : > "$target"; [[ -f $target ]] && printf 'Regular file created\n'
printf "\nValidation: command completed.\n"
