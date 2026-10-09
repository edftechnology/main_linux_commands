#!/usr/bin/env bash
set -euo pipefail

printf 'Espaço para HOME:\n'
df -hT -- "$HOME"
printf '\nInodes para HOME:\n'
df -i -- "$HOME"
