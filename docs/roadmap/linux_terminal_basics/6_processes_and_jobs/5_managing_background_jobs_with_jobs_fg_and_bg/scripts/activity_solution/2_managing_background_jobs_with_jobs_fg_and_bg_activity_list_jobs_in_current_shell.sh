#!/usr/bin/env bash
set -euo pipefail

sleep 1 & job_pid=$!; jobs -l; wait "$job_pid"
