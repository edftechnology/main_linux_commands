#!/usr/bin/env bash
set -euo pipefail

set -o pipefail
printf 'banana\npera\nbanana\n' | sort | uniq -c
printf 'a\nb\nc\n' | wc -l
