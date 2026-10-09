#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,30p'
printf '\nSimulação de purge:\n'
apt-get -s purge tree | sed -n '1,30p'
