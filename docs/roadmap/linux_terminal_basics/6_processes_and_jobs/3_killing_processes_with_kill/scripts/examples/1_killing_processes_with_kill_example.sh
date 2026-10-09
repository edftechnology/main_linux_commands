#!/usr/bin/env bash
set -euo pipefail

sleep 30 &
process_id=$!
kill -TERM "$process_id"
wait "$process_id" 2>/dev/null || true
printf 'Processo encerrado com solicitação TERM.\n'
