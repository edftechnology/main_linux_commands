#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,18p' || true
apt-get -s install tree | sed -n '1,35p'
printf '\nA simulação não instala o pacote.\n'
