#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
(sleep 1; printf 'tarefa concluída\n') > "$temp_root/background.log" 2>&1 &
process_id=$!
wait "$process_id"
status=$?
printf 'PID=%s status=%s\n' "$process_id" "$status"
cat "$temp_root/background.log"
