#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
file_path=${1:-/etc/os-release}
if [[ -r "$file_path" ]]; then
  printf 'Legível: %s\n' "$file_path"
else
  printf 'Ausente ou sem leitura: %s\n' "$file_path" >&2
fi
