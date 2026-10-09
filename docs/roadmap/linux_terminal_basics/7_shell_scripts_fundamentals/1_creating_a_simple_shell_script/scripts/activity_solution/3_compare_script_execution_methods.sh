#!/usr/bin/env bash
set -euo pipefail
printf '%s\n'   'bash script.sh: explicit interpreter; execute bit is not required.'   './script.sh: uses shebang and requires execute permission.'   'source script.sh: runs in the current shell; use only when changing current-shell state is intended.'
