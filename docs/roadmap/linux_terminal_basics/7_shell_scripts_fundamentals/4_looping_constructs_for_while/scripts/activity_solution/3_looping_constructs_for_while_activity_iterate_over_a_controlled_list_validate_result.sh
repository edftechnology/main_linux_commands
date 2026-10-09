#!/usr/bin/env bash
set -euo pipefail

for item in alpha beta gamma; do printf 'Item: %s\n' "$item"; done
printf "\nValidation: command completed.\n"
