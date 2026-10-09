#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp /usr /dev /proc /sys; do
  [[ -e "$path" ]] && printf '%-8s %s\n' "$path" "$(stat -c %F "$path")"
done
findmnt -T / -o TARGET,SOURCE,FSTYPE
