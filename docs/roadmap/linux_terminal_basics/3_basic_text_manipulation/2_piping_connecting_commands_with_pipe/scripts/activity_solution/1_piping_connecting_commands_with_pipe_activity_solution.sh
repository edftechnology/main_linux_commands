#!/usr/bin/env bash
set -euo pipefail

set -o pipefail
printf 'ana\nbruno\nana\ncarla\nbruno\nana\n' | sort | uniq -c | awk '$1 > 1 { print $2, $1 }'
