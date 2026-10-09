#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,35p'
printf '\nPacotes atualizáveis segundo os índices locais:\n'
apt list --upgradable 2>/dev/null | head -n 15
