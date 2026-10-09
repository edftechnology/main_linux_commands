#!/usr/bin/env bash
set -euo pipefail

if command -v top >/dev/null 2>&1; then
  top -b -n 1 -o %CPU | head -n 12
else
  printf 'Instale top pela distribuição.\n' >&2
fi
