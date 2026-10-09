#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/guia.txt"
cat > "$file_path" <<'EOF'
Meu guia

Comando: grep
Uso: grep -n padrao arquivo
EOF
test "$(grep -c '^Comando:' "$file_path")" -eq 1
printf 'Documento pronto: %s\n' "$file_path"
