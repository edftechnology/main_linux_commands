#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/note.txt"; printf 'keep me\n' > "$file"; touch -- "$file"; cat -- "$file"
