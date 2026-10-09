#!/usr/bin/env bash
set -euo pipefail

user_name=$(whoami)
printf 'Usuário=%s UID=%s\n' "$user_name" "$(id -u)"
getent passwd "$user_name" | cut -d: -f1,3,4,6
