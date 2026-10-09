#!/usr/bin/env bash
set -euo pipefail

uname -srmo; if [[ -r /etc/os-release ]]; then . /etc/os-release; printf '%s %s\n' "$PRETTY_NAME" "$VERSION_ID"; fi
printf "\nValidation: command completed.\n"
