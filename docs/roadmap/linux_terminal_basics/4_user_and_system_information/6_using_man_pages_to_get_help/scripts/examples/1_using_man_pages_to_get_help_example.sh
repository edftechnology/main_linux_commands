#!/usr/bin/env bash
set -euo pipefail

ls --help | head -n 12
man -f find 2>/dev/null || true
man -k directory 2>/dev/null | head -n 8 || true
