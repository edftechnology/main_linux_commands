#!/usr/bin/env bash
set -euo pipefail
printf '%s\n'   'chmod u+x script.sh adds execute permission for the file owner.'   'Without execute permission, ./script.sh is denied; bash script.sh can still read it.'
