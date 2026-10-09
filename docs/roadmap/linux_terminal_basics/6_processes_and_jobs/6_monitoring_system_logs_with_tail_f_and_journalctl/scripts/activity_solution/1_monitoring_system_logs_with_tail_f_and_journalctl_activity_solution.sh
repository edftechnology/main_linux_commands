#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
log_file="$temp_root/service.log"
printf 'boot\nready\nwarning: retry\n' > "$log_file"
tail -n 2 "$log_file"
journalctl -n 5 --no-pager 2>/dev/null || printf 'Journal indisponível para este usuário.\n'
