#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/curso/modulo/licao"
find "$temp_root" -type d -print
rmdir "$temp_root/curso/modulo/licao"
rmdir "$temp_root/curso/modulo"
rmdir "$temp_root/curso"
