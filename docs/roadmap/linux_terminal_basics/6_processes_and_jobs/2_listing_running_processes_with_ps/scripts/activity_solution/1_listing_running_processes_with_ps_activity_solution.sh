#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,user,stat,%cpu,comm --sort=-%cpu | head -n 6
