#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'
apt-cache policy curl
apt-cache show curl 2>/dev/null | grep -E '^(Package|Version|Depends|Description):' | head -n 12 || true
