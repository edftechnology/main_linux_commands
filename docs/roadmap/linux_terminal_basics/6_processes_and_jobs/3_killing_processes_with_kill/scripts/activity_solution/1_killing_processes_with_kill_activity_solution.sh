#!/usr/bin/env bash
set -euo pipefail

sleep 30 &
process_id=$!
kill -TERM "$process_id"
if wait "$process_id" 2>/dev/null; then printf 'Terminou normalmente.\n'; else printf 'Terminou após receber sinal.\n'; fi
