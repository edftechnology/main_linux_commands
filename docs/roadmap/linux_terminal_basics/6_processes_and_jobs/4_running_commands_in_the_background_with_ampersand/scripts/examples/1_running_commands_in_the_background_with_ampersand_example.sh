#!/usr/bin/env bash
set -euo pipefail

sleep 2 &
process_id=$!
printf 'PID em background: %s\n' "$process_id"
wait "$process_id"
printf 'Terminou.\n'
