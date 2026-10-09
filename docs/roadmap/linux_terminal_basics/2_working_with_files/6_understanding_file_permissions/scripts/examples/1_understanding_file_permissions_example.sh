#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/script.sh"
printf '#!/usr/bin/env bash\necho pronto\n' > "$file_path"
chmod 640 "$file_path"
stat -c '%A %a %n' "$file_path"
chmod u+x "$file_path"
stat -c '%A %a %n' "$file_path"
