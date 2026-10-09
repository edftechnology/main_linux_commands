#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'inicio\n' > "$temp_root/app.log"
printf 'evento\n' >> "$temp_root/app.log"
tail -n 2 "$temp_root/app.log"
journalctl -n 5 --no-pager 2>/dev/null || true
