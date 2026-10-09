#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'ok\nERRO: rede\ninfo\n' > "$temp_root/app.log"
grep -inE 'erro|falha' "$temp_root/app.log" || true
