#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/src" "$temp_root/dest"; printf x > "$temp_root/src/a"; printf y > "$temp_root/src/.b"; cp -a "$temp_root/src/." "$temp_root/dest/"; ls -la "$temp_root/dest"
printf "\nValidation: command completed.\n"
