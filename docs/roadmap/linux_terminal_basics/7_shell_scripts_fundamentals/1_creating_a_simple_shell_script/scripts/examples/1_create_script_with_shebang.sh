#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/hello.sh"
cat > "$script_file" <<'SCRIPT'
#!/usr/bin/env bash
printf 'Hello from Bash\n'
SCRIPT
bash "$script_file"
