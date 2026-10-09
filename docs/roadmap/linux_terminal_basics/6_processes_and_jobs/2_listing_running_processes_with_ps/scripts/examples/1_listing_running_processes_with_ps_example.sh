#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,user,stat,%cpu,%mem,comm --sort=-%cpu | head -n 12
printf '\nProcessos do usuário atual: \n'
ps -u "$(id -un)" -o pid,stat,comm | head -n 12
