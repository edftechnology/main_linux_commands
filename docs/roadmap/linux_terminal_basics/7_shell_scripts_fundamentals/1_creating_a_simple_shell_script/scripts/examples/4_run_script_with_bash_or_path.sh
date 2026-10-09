#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/methods.sh"
printf '#!/usr/bin/env bash\nprintf "Executed by: %%s\\n" "$BASH_VERSION"\n' > "$script_file"
printf 'Interpreter invocation:\n'
bash "$script_file"
chmod u+x "$script_file"
printf 'Direct invocation:\n'
"$script_file"
