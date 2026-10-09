#!/usr/bin/env bash
set -euo pipefail

start_dir=$PWD
temp_root=$(mktemp -d)
trap 'cd -- "$start_dir"; rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/child"
cd "$temp_root/child"
printf 'Dentro: %s\n' "$PWD"
cd -- "$start_dir"
