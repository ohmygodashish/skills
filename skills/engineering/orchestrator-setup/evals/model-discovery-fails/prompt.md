---
tags: [orchestrator-setup]
max_turns: 80
timeout_seconds: 1500
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash, WebFetch, WebSearch]
---

/orchestrator-setup

You are running headless: nobody is available to answer. Treat the answers below as my replies to your question rounds, in the order the questions would come up. For anything not covered, take the recommended option. I approve writing every file you show a diff for, using the default action unless I say otherwise below. Do the full flow including the parse check and the visibility check, and skip the smoke test. Do not commit anything.

Harness: Claude Code. Scope: project. Strictness: strict. Git: local only. Roles: the defaults.
There is no network: every web fetch or search will fail, so do not retry beyond once per page. There is no model listing command.
When you ask me for model identifiers I answer: "I don't know them. Use whatever the main session uses."
Facts: confirm everything you found.

Input files: README.md
