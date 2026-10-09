#!/usr/bin/env bash
set -euo pipefail

name=${1:-}
if [[ -z "$name" ]]; then
  read -r -p 'Your name: ' name
fi
if [[ -z "$name" ]]; then
  printf 'A name is required.\n' >&2
  exit 2
fi
printf 'Welcome, %s!\n' "$name"
