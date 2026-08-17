#!/usr/bin/env bash
set -euo pipefail

# list-skills.sh
# Audits and lists all skills hosted in this repository along with their descriptions.

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

python3 -c '
import os, glob, re, sys

repo_dir = sys.argv[1]
skills_src = os.path.join(repo_dir, "skills")
skill_files = glob.glob(f"{skills_src}/**/SKILL.md", recursive=True)

print("Repository Skills Summary (ohmygodashish/skills)")
print("===================================================")

for idx, sf in enumerate(sorted(skill_files), 1):
    rel_path = os.path.relpath(sf, repo_dir)
    skill_name = os.path.basename(os.path.dirname(sf))
    
    with open(sf, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()
    
    fm_match = re.search(r"^---\n(.*?)\n---", content, re.DOTALL)
    description = ""
    if fm_match:
        fm_text = fm_match.group(1)
        desc_match = re.search(r"description:\s*\|?\s*\"?(.*?)\"?(?:\n[a-z-]+:|\n*$)", fm_text, re.DOTALL)
        if desc_match:
            description = desc_match.group(1).strip()
            description = re.sub(r"\s+", " ", description)
            
    print(f"- {skill_name} ({rel_path})")
    if description:
        print(f"  {description}")
    print("")

print("===================================================")
print(f"Total Skills Found: {len(skill_files)}")
' "$REPO_DIR"

