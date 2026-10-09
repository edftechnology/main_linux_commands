#!/usr/bin/env bash
set -euo pipefail

printf 'Kernel: %s\n' "$(uname -s)"
printf 'Versão: %s\n' "$(uname -r)"
printf 'Arquitetura: %s\n' "$(uname -m)"
if [[ -r /etc/os-release ]]; then . /etc/os-release; printf 'Distribuição: %s %s\n' "${NAME:-?}" "${VERSION_ID:-}"; fi
