#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; seq 1 8 > "$temp_root/lines.txt"; printf 'First lines:\n'; head -n 3 "$temp_root/lines.txt"; printf 'Last lines:\n'; tail -n 2 "$temp_root/lines.txt"
printf "\nValidation: command completed.\n"
