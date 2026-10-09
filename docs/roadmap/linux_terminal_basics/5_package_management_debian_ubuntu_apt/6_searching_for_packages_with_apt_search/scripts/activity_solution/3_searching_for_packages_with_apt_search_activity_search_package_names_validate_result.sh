#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'; apt-cache policy curl
printf "\nValidation: command completed.\n"
