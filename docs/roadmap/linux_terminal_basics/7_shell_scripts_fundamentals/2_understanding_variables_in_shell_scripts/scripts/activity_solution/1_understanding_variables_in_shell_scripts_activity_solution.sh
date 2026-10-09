#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
user_name=${1:-visitante}
output_dir=${2:-"$HOME"}
printf 'Usuário: %s\nSaída: %s\n' "$user_name" "$output_dir"
