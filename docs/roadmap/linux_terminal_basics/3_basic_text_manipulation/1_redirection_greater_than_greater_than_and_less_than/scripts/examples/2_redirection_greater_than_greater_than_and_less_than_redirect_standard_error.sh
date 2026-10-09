#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; ls "$temp_root/missing" 2>"$temp_root/error.log" || true; printf 'Captured error: '; wc -l < "$temp_root/error.log"
