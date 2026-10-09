#!/usr/bin/env bash
set -euo pipefail

first=$(mktemp -d); second=$(mktemp -d)
trap 'rmdir -- "$first" "$second"' EXIT
cd "$first"; printf 'Primeiro: %s\n' "$PWD"
cd "$second"; cd - >/dev/null
printf 'Volta: %s\n' "$PWD"
