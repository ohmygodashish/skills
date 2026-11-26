---
tags: [orchestrator-setup]
max_turns: 80
timeout_seconds: 1500
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash, WebFetch, WebSearch]
---

/orchestrator-setup

You are running headless: nobody is available to answer. Treat the answers below as my replies to your question rounds, in the order the questions would come up. For anything not covered, take the recommended option. I approve writing every file you show a diff for, using the default action unless I say otherwise below. Do the full flow including the parse check and the visibility check, and skip the smoke test. Do not commit anything.

Harness: Codex. Scope: project. Strictness: strict. Git: local only through the exclude file.
Roles: the defaults (core four on, nothing else). Facts: confirm everything you found; for anything unknown, leave it as unknown.
Models: use the recommended pick for each role; if the harness has no alias concept, pinned is fine.

Input files: README.md
