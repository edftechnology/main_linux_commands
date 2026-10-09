#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf '#!/usr/bin/env bash\nprintf \"ok\\n\"\n' > "$temp_root/check.sh"; bash -n "$temp_root/check.sh"; bash "$temp_root/check.sh"
printf "\nValidation: command completed.\n"
