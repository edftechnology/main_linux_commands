#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,stat,%cpu,%mem,comm --sort=-%cpu | sed -n '1,12p'
