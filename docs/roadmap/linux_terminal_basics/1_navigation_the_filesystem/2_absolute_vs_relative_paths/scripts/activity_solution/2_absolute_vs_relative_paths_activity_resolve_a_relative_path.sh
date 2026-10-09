#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/project/subdir"; cd "$temp_root/project/subdir"; printf 'relative=%s\nabsolute=%s\n' ../ "$(realpath ..)"
