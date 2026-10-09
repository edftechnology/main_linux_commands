#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
for number in 1 2 3; do printf 'for: %s\n' "$number"; done
counter=1
while (( counter <= 3 )); do
  printf 'while: %s\n' "$counter"
  ((counter += 1))
done
