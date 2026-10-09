#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
user_name=${1:-visitante}
greeting="Olá, $user_name"
printf '%s\n' "$greeting"
export COURSE_NAME='Linux Terminal Basics'
bash -c 'printf "Filho recebeu: %s\n" "$COURSE_NAME"'
