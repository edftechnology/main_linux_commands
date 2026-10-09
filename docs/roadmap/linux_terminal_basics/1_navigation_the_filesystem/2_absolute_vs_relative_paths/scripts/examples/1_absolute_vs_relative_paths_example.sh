#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/projeto teste"
cd "$temp_root/projeto teste"
printf 'Relativo: ../projeto teste\nAbsoluto: %s\n' "$(pwd -P)"
