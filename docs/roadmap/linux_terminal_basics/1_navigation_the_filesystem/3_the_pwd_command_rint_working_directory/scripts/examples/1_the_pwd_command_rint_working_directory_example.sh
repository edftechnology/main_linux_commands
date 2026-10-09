#!/usr/bin/env bash
set -euo pipefail

printf 'Lógico: '; pwd -L
printf 'Físico: '; pwd -P
printf 'PWD: %s\n' "$PWD"
