#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/curso/modulo/licao"
test -d "$temp_root/curso/modulo/licao"
rmdir "$temp_root/curso/modulo/licao"
rmdir "$temp_root/curso/modulo"
rmdir "$temp_root/curso"
test ! -e "$temp_root/curso"
