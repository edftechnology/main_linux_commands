#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
text_file="$temp_root/text.txt"
printf 'ação rápida\nlinha dois\nlinha três\n' > "$text_file"
printf 'Linhas: '; wc -l < "$text_file"
printf 'Palavras: '; wc -w < "$text_file"
printf 'Bytes: '; wc -c < "$text_file"
printf 'Caracteres: '; wc -m < "$text_file"
