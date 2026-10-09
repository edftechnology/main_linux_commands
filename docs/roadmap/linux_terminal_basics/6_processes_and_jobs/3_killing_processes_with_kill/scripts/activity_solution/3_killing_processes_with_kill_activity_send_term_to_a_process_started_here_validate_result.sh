#!/usr/bin/env bash
set -euo pipefail

sleep 10 & process_id=$!; kill -TERM "$process_id"; if wait "$process_id" 2>/dev/null; then printf 'Exited normally\n'; else printf 'Exited after signal\n'; fi
printf "\nValidation: command completed.\n"
