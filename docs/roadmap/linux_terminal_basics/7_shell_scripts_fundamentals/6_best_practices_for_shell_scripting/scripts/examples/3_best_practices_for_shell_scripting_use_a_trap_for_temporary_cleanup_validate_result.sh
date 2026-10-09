#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'temporary data\n' > "$temp_root/data"; test -s "$temp_root/data"; printf 'Temporary workspace will be cleaned on exit.\n'
printf "\nValidation: command completed.\n"
