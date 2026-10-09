#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/data"; touch "$file"; chmod u=rw,go= "$file"; stat -c '%A %a' "$file"; umask
printf "\nValidation: command completed.\n"
