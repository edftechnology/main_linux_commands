#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'inicio\nok\nerro: disco\nok\nok\nerro: rede\nok\nfim\n' > "$temp_root/app.log"
head -n 3 "$temp_root/app.log"
tail -n 3 "$temp_root/app.log"
grep -n 'erro' "$temp_root/app.log"
