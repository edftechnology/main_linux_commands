#!/usr/bin/env bash
set -euo pipefail

sleep 20 &
pid=$!
printf 'PID iniciado: %s\n' "$pid"
ps -o pid,ppid,stat,comm -p "$pid"
kill "$pid"
wait "$pid" 2>/dev/null || true
