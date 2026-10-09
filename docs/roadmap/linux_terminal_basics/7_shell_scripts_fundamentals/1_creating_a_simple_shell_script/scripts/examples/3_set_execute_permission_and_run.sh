#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/greet.sh"
cat > "$script_file" <<'SCRIPT'
#!/usr/bin/env bash
set -euo pipefail
printf 'Hello, %s!\n' "${1:-world}"
SCRIPT
chmod u+x "$script_file"
"$script_file" Ada
