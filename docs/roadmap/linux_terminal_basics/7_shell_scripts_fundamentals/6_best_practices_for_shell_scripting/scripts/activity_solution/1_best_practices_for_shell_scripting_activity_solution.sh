#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
cleanup() { [[ -n ${temp_dir:-} && -d $temp_dir ]] && rm -rf -- "$temp_dir"; }
trap cleanup EXIT
if (( $# > 1 )); then printf 'Uso: %s [texto]\n' "$0" >&2; exit 2; fi
show_text() { printf 'Resultado: %s\n' "$1"; }
temp_dir=$(mktemp -d)
value=${1:-exemplo}
printf '%s\n' "$value" > "$temp_dir/value.txt"
show_text "$(cat "$temp_dir/value.txt")"
