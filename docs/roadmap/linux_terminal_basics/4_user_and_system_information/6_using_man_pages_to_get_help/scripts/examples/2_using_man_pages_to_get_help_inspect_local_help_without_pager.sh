#!/usr/bin/env bash
set -euo pipefail

printf 'find help excerpt:\n'; find --help | sed -n '1,12p'; printf '
Manual pages installed: '; command -v man || true
