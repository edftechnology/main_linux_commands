#!/usr/bin/env bash
set -euo pipefail

df -hT /
printf '\nInodes da raiz:\n'
df -i /
