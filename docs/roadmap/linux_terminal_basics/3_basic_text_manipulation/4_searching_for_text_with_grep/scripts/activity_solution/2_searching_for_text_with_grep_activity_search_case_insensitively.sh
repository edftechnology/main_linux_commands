#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'Info\nERROR: disk\n' > "$temp_root/app.log"; grep -inE 'error|warning' "$temp_root/app.log" || true
