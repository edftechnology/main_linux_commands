#!/usr/bin/env bash
set -euo pipefail

sleep 5 & process_id=$!; ps -o pid,ppid,stat,comm -p "$process_id"; kill -TERM "$process_id"; wait "$process_id" 2>/dev/null || true
printf "\nValidation: command completed.\n"
