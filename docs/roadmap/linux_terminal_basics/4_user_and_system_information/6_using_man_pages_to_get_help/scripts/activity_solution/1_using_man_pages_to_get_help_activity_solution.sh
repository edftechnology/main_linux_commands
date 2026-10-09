#!/usr/bin/env bash
set -euo pipefail

man -f find 2>/dev/null || true
man -f passwd 2>/dev/null || true
man -k directory 2>/dev/null | head -n 10 || true
