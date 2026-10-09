#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf x > "$temp_root/a.txt"
printf secret > "$temp_root/.privado"
ls -lah -- "$temp_root"
