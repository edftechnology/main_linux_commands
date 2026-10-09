#!/usr/bin/env bash
set -euo pipefail

pwd -L
pwd -P
if pwd >/dev/null; then printf 'pwd concluiu com status 0.\n'; fi
