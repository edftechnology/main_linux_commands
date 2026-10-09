#!/usr/bin/env bash
set -euo pipefail

message='Olá, terminal'
echo "$message"
printf 'Previsível: %s\n' "$message"
printf 'Literal: %s\n' 'texto\nsem escape'
