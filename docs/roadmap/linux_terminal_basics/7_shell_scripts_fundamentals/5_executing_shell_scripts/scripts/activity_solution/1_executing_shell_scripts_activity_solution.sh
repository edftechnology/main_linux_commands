#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/hello.sh"
printf '#!/usr/bin/env bash\nset -euo pipefail\nprintf "executado\\n"\n' > "$script_file"
bash -n "$script_file"
chmod u+x "$script_file"
"$script_file"
