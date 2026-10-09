#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do
  test -e "$path" && stat -c '%n: %F' "$path"
done
findmnt -T / -o TARGET,SOURCE,FSTYPE
