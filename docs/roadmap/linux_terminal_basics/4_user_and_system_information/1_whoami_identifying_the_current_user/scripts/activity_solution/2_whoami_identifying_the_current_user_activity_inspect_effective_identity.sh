#!/usr/bin/env bash
set -euo pipefail

printf 'User: '; whoami; id; printf 'UID: '; id -u
