#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | sed -n '1,24p'
printf "\nValidation: command completed.\n"
