#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/notes.txt"; printf 'Title\nBody\n' > "$file"; sed 's/Body/Updated body/' "$file"
printf "\nValidation: command completed.\n"
