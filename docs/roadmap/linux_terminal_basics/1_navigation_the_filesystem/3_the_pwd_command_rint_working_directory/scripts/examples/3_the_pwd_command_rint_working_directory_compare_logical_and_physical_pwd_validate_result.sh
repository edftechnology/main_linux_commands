#!/usr/bin/env bash
set -euo pipefail

printf 'Logical: '; pwd -L; printf 'Physical: '; pwd -P
printf "\nValidation: command completed.\n"
