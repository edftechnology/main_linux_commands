#!/usr/bin/env bash
set -euo pipefail

(sleep 0.2; exit 7) & process_id=$!; if wait "$process_id"; then status=0; else status=$?; fi; printf 'PID=%s status=%s\n' "$process_id" "$status"
