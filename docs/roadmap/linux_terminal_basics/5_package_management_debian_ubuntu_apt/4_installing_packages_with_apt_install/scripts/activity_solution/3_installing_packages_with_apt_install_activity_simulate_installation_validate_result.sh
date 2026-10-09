#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,12p' || true; apt-get -s install tree | sed -n '1,25p'
printf "\nValidation: command completed.\n"
