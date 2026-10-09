#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/check.sh"
printf '#!/usr/bin/env bash\nset -euo pipefail\nprintf "ok\\n"\n' > "$script_file"
bash -n "$script_file"
chmod u+x "$script_file"
"$script_file"
