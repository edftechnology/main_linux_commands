#!/usr/bin/env bash
set -euo pipefail

ps -u "$(id -un)" -o pid,stat,comm | sed -n '1,15p'
printf "\nValidation: command completed.\n"
