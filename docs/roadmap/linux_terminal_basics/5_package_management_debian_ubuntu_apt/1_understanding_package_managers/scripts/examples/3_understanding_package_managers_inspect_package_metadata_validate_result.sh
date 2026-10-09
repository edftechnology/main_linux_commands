#!/usr/bin/env bash
set -euo pipefail

apt-cache policy bash; dpkg-query -W -f='${Package} ${Version}\n' bash 2>/dev/null || true
printf "\nValidation: command completed.\n"
