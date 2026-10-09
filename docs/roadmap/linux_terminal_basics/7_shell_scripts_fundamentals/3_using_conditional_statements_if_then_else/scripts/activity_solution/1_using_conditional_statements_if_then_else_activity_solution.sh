#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
path=${1:-.}
if [[ -f "$path" ]]; then
  printf 'Arquivo regular\n'
elif [[ -d "$path" ]]; then
  printf 'Diretório\n'
else
  printf 'Caminho ausente ou outro tipo\n'
fi
