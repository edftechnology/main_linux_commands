#!/usr/bin/env bash
set -euo pipefail
printf '%s\n'   'The shebang selects the interpreter for direct execution.'   'Without it, direct execution may fail or use an unintended fallback.'   'Calling bash script.sh explicitly selects Bash regardless of the shebang.'
