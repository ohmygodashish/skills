#!/usr/bin/env bash
# Maintainer check: fail if the skill contains anything shaped like a model ID or a version number.
# Shape checks only, so this file contains no model names.
# Optional: pass a denylist file of model names (one per line, kept OUTSIDE the skill folder):
#   scripts/check-stale.sh [--denylist FILE] [SKILL_DIR]
# Allowed: date stamps ("catalog", "Catalog date:", "Last verified:") and the schema_version line of eval case files.
set -euo pipefail

DENY=""
if [ "${1:-}" = "--denylist" ]; then DENY="${2:?denylist file}"; shift 2; fi
DIR="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
FAIL=0
FILES=()
while IFS= read -r -d '' f; do FILES+=("$f"); done < <(find "$DIR" -type f \( -name '*.md' -o -name '*.yaml' -o -name '*.json' -o -name '*.sh' \) -not -path '*/evals/results/*' -print0)

# Remove allowed date stamps, then look for suspicious shapes.
scrub() { sed -E '/^schema_version: "[0-9.]+"$/d; s/(catalog|Catalog date:|Last verified:|last verified)[ :]*[0-9]{4}-[0-9]{2}-[0-9]{2}/\1 STAMP/g' "$1"; }

check() { # label regex
  local label="$1" re="$2" hit
  for f in "${FILES[@]}"; do
    [ "$f" = "$DIR/scripts/check-stale.sh" ] && continue
    hit=$(scrub "$f" | grep -nE "$re" || true)
    if [ -n "$hit" ]; then echo "[$label] $f"; echo "$hit" | sed 's/^/    /'; FAIL=1; fi
  done
}

check "dotted version"      '(^|[^0-9A-Za-z])v?[0-9]+\.[0-9]+(\.[0-9]+)?([^0-9]|$)'
check "dated model suffix"  '[A-Za-z]-[0-9]{8}'
check "name with number"    '[A-Za-z]+-[0-9]+(-[0-9]+)*([^0-9A-Za-z]|$)'
check "vN token"            '(^|[^A-Za-z0-9])v[0-9]+([^A-Za-z0-9]|$)'
check "iso date (unstamped)" '[0-9]{4}-[0-9]{2}-[0-9]{2}'

if [ -n "$DENY" ]; then
  while IFS= read -r name; do
    [ -z "$name" ] && continue
    for f in "${FILES[@]}"; do
      if grep -qiF -- "$name" "$f"; then echo "[denylist] $f contains: $name"; FAIL=1; fi
    done
  done < "$DENY"
fi

if [ "$FAIL" -eq 0 ]; then echo "check-stale: clean"; else echo "check-stale: FAILED"; exit 1; fi
