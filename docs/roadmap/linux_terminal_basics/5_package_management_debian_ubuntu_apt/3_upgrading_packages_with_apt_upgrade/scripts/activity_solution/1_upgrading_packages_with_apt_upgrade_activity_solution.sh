#!/usr/bin/env bash
set -euo pipefail

simulation=$(apt-get -s upgrade)
printf '%s\n' "$simulation" | sed -n '1,40p'
printf '%s\n' "$simulation" | grep -E '^[0-9]+ upgraded' || true
