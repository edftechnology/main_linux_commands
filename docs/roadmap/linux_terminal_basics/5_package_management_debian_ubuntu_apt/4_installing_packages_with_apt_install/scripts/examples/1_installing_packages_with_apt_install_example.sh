#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,14p' || true
printf '\nSimulação de instalação:\n'
apt-get -s install tree | sed -n '1,30p'
