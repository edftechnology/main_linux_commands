#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,30p'
