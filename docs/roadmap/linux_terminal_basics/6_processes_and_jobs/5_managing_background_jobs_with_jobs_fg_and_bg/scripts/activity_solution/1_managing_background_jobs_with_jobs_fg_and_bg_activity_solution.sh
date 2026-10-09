#!/usr/bin/env bash
set -euo pipefail

printf '%s\n' 'Sequência interativa:' 'sleep 60' 'Ctrl+Z' 'jobs -l' 'bg %1' 'jobs -l' 'fg %1' 'Ctrl+C'
