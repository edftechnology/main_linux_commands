#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/source"
printf A > "$temp_root/source/a.txt"
printf B > "$temp_root/source/b.txt"
cp -a -- "$temp_root/source" "$temp_root/backup"
cmp "$temp_root/source/a.txt" "$temp_root/backup/a.txt"
cmp "$temp_root/source/b.txt" "$temp_root/backup/b.txt"
