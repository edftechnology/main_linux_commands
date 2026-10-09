#!/usr/bin/env bash
set -euo pipefail

printf 'pear\napple\napple\npear\npear\n' | sort | uniq -c
printf "\nValidation: command completed.\n"
