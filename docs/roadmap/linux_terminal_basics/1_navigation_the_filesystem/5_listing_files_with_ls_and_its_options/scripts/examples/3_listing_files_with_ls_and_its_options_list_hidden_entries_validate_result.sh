#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/visible" "$temp_root/.hidden"; ls -la -- "$temp_root"
printf "\nValidation: command completed.\n"
