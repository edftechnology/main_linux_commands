#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'primeira linha\nlinha com espaços\nterceira\n' > "$temp_root/input.txt"
line_number=0
while IFS= read -r line || [[ -n "$line" ]]; do
  ((line_number += 1))
  printf '%d: %s\n' "$line_number" "$line"
done < "$temp_root/input.txt"
