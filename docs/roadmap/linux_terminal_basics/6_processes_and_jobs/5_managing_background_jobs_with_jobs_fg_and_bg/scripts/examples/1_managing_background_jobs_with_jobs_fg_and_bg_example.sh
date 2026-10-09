#!/usr/bin/env bash
set -euo pipefail

printf 'Em terminal interativo: sleep 60
'
printf 'Ctrl+Z suspende; depois use jobs, bg %%1 e fg %%1.
'
sleep 1 &
job_pid=$!
jobs -l
wait "$job_pid"
