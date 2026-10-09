#!/usr/bin/env bash
set -euo pipefail

apt --version
dpkg-query -W -f='${Package} ${Version} ${Status}\n' bash
apt-cache policy bash
