#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
cleanup() { [[ -n ${temp_dir:-} && -d $temp_dir ]] && rm -rf -- "$temp_dir"; }
trap cleanup EXIT
temp_dir=$(mktemp -d)
input=${1:-sample}
printf 'Entrada validada: %s\n' "$input"
printf '%s\n' "$input" > "$temp_dir/result.txt"
cat "$temp_dir/result.txt"
