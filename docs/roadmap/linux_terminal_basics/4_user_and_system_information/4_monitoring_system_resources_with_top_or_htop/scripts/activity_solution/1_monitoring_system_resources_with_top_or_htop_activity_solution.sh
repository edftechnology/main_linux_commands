#!/usr/bin/env bash
set -euo pipefail

top -b -n 1 -o %CPU | head -n 12
printf '\nResumo com ps:\n'
ps -eo pid,user,comm,%cpu,%mem --sort=-%cpu | head -n 6
