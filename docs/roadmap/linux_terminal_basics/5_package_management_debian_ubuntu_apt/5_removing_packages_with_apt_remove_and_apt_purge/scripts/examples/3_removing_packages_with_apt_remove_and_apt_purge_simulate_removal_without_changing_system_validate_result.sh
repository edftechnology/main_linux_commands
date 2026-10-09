#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,20p'; printf '
Purge simulation:\n'; apt-get -s purge tree | sed -n '1,20p'
printf "\nValidation: command completed.\n"
