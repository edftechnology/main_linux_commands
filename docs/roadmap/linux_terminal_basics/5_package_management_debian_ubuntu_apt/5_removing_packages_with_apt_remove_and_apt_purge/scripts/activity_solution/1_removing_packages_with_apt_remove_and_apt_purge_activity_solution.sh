#!/usr/bin/env bash
set -euo pipefail

package_name=tree
printf 'Remove:\n'; apt-get -s remove "$package_name" | sed -n '1,25p'
printf '\nPurge:\n'; apt-get -s purge "$package_name" | sed -n '1,25p'
