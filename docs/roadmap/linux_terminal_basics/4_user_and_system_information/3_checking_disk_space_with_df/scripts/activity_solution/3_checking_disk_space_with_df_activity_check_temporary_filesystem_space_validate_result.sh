#!/usr/bin/env bash
set -euo pipefail

df -hT /tmp 2>/dev/null || df -hT /
printf "\nValidation: command completed.\n"
