#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'ok\nERRO: disco\n' > "$temp_root/a.log"
printf 'Falha de rede\nok\n' > "$temp_root/b.log"
grep -inHE 'erro|falha' "$temp_root"/*.log
