#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; (cd "$temp_root/a"; pushd b >/dev/null; printf 'Inside: '; pwd; popd >/dev/null; printf 'Back: '; pwd)
