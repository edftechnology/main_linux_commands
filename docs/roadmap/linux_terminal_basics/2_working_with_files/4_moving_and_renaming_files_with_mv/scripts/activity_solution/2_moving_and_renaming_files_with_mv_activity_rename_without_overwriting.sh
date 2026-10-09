#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf old > "$temp_root/old.txt"; mv -n -- "$temp_root/old.txt" "$temp_root/new.txt"; test -f "$temp_root/new.txt"; ls -l "$temp_root"
