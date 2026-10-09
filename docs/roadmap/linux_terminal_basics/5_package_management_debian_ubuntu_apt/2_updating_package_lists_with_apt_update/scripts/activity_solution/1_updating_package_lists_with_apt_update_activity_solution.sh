#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | sed -n '1,20p'
apt list --upgradable 2>/dev/null | sed -n '1,20p'
printf '\nPara atualizar índices manualmente, a ação é: sudo apt update\n'
