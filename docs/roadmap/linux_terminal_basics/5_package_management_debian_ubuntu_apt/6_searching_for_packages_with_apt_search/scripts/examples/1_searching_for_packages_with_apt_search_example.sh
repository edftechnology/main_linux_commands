#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^tree$'
apt-cache show tree 2>/dev/null | sed -n '1,22p' || true
