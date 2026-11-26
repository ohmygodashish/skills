---
tags: [orchestrator-setup]
max_turns: 80
timeout_seconds: 1500
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash, WebFetch, WebSearch]
---

/orchestrator-setup

You are running headless: nobody is available to answer. Treat the answers below as my replies to your question rounds, in the order the questions would come up. For anything not covered, take the recommended option. I approve writing every file you show a diff for, using the default action unless I say otherwise below. Do the full flow including the parse check and the visibility check, and skip the smoke test. Do not commit anything.

Harness: Claude Code only. Scope: project. Strictness: strict. Git: local only. Roles: the defaults.
For CLAUDE.md: merge, keeping all my text, and add your managed block after it. Tell me about the clash with my own 'Orchestrator' heading rather than deleting it.
For .claude/agents/explorer.md: skip, it is mine. Write the other three agents.
Models: recommended pick, alias where offered. Facts: confirm what you found.

Input files: README.md
