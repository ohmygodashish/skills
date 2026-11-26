#!/usr/bin/env bash
set -eu
# Refuse to run anywhere but an empty directory: this script runs git init, add and commit.
if [ -n "$(ls -A .)" ]; then echo "refusing: current directory is not empty" >&2; exit 1; fi
HERE="$(cd "$(dirname "$0")" && pwd)"
cp -R "$HERE/../fixtures/basic/." .
if [ -d "$HERE/files" ]; then cp -R "$HERE/files/." .; fi
git init -q .
git add -A
git -c user.name=eval -c user.email=eval@example.invalid commit -qm fixture
