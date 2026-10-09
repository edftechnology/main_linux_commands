#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do [[ -e $path ]] && stat -c '%n: %F' "$path"; done
