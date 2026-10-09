#!/usr/bin/env bash
set -euo pipefail

printf 'APT: '; apt --version
printf '\ndpkg: '; dpkg --version | head -n 1
printf '\nPolítica do pacote bash:\n'
apt-cache policy bash
