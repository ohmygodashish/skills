#!/usr/bin/env bash
set -eu
HERE="$(cd "$(dirname "$0")" && pwd)"
cp -R "$HERE/../fixtures/basic/." .
if [ -d "$HERE/files" ]; then cp -R "$HERE/files/." .; fi
git init -q .
git add -A
git -c user.name=eval -c user.email=eval@example.invalid commit -qm fixture
