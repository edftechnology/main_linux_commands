#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'rascunho\n' > "$temp_root/rascunho.txt"
mv -v -- "$temp_root/rascunho.txt" "$temp_root/relatorio.txt"
test -f "$temp_root/relatorio.txt"
