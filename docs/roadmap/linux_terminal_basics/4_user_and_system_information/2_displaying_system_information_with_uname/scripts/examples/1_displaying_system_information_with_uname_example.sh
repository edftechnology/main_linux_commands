#!/usr/bin/env bash
set -euo pipefail

uname -s
uname -r
uname -m
if [[ -r /etc/os-release ]]; then grep -E '^(NAME|VERSION|PRETTY_NAME)=' /etc/os-release; fi
