#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/raiz/projeto teste"
cd "$temp_root/raiz"
cd './projeto teste'
printf '%s\n' "$(realpath .)"
