#!/usr/bin/env bash
set -euo pipefail

# NOTE: Dev-only script intended for maintainers of this repository.
# Links all skills in the repository into the local skill directories used by
# each agent harness:
#   - ~/.claude/skills  — Claude Code
#   - ~/.agents/skills  — Codex and other Agent Skills-compatible harnesses
#
# Usage:
#   ./scripts/link-skills.sh [--dry-run] [--force] [DEST ...]
#
#   --dry-run   Print what would be linked and exit without touching the filesystem.
#   --force     Replace real directories at the destination. Destructive; see below.
#   DEST ...    One or more destination directories. Defaults to the two paths above.
#
# Safety: this script only ever replaces symlinks. If a destination entry is a real
# directory (for example, skills previously installed by `npx skills add`, which copies
# real files), it is reported and skipped rather than deleted. Use --force to override,
# which permanently removes those directories.

DRY_RUN=0
FORCE=0
DESTS=()

while [ $# -gt 0 ]; do
  case "$1" in
    --dry-run) DRY_RUN=1; shift ;;
    --force)   FORCE=1;   shift ;;
    -h|--help)
      sed -n '4,20p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    --*)
      echo "Unknown option: $1" >&2
      echo "Usage: $0 [--dry-run] [--force] [DEST ...]" >&2
      exit 2
      ;;
    *) DESTS+=("$1"); shift ;;
  esac
done

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ ${#DESTS[@]} -eq 0 ]; then
  DESTS=("$HOME/.claude/skills" "$HOME/.agents/skills")
fi

echo "Repository Source: $REPO_DIR/skills"
for dest in "${DESTS[@]}"; do
  echo "Destination:       $dest"
done
if [ "$DRY_RUN" -eq 1 ]; then
  echo "Mode:              DRY RUN (no changes will be made)"
elif [ "$FORCE" -eq 1 ]; then
  echo "Mode:              FORCE (real directories at the destination will be removed)"
fi
echo "---------------------------------------------------"

COUNT=0
SKIPPED=0

# Collect all skill directories containing SKILL.md
while IFS= read -r -d '' skill_md; do
  skill_dir="$(dirname "$skill_md")"
  skill_name="$(basename "$skill_dir")"

  for dest in "${DESTS[@]}"; do
    dest_link="$dest/$skill_name"

    # Refuse to destroy anything that is not a symlink we can safely replace.
    if [ -e "$dest_link" ] && [ ! -L "$dest_link" ]; then
      if [ "$FORCE" -eq 1 ]; then
        echo "FORCE: removing real path $dest_link" >&2
        [ "$DRY_RUN" -eq 1 ] || rm -rf "$dest_link"
      else
        echo "REFUSING: $dest_link exists and is not a symlink. Skipping. Use --force to replace it." >&2
        SKIPPED=$((SKIPPED + 1))
        continue
      fi
    fi

    if [ "$DRY_RUN" -eq 1 ]; then
      echo "DRY RUN: would link $skill_name -> $dest_link"
    else
      mkdir -p "$dest"
      # -f replaces an existing symlink, -n avoids dereferencing a symlinked directory.
      ln -sfn "$skill_dir" "$dest_link"
      echo "Linked: $skill_name -> $dest_link"
    fi
  done
  COUNT=$((COUNT + 1))
done < <(find "$REPO_DIR/skills" -name SKILL.md -not -path '*/node_modules/*' -print0)

echo "---------------------------------------------------"
if [ "$DRY_RUN" -eq 1 ]; then
  echo "Dry run complete. $COUNT skills would be linked. Nothing was changed."
else
  echo "Successfully linked $COUNT skills!"
fi

if [ "$SKIPPED" -gt 0 ]; then
  echo "Skipped $SKIPPED destination(s) that held real directories. Re-run with --force to replace them." >&2
fi
