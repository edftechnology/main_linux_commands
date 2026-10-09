#!/usr/bin/env bash
set -euo pipefail

printf 'Repositórios configurados:\n'
apt-cache policy | sed -n '1,18p'
printf '\nAtualizações visíveis nos índices atuais:\n'
apt list --upgradable 2>/dev/null | sed -n '1,15p'
