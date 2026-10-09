#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; find "$temp_root" -type d -print; rmdir "$temp_root/a/b" "$temp_root/a"
