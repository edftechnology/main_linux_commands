#!/usr/bin/env bash
set -euo pipefail

if command -v journalctl >/dev/null && journalctl --no-pager -n 3 >/dev/null 2>&1; then journalctl --no-pager -n 3; else printf 'Journal is unavailable or access is restricted.\n'; fi
