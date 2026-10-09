#!/usr/bin/env bash
set -euo pipefail

value='text\nnot a newline'; printf 'Value: %s\n' "$value"
printf "\nValidation: command completed.\n"
