---
tags: [orchestrator-setup]
max_turns: 80
timeout_seconds: 1500
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash, WebFetch, WebSearch]
---

/orchestrator-setup

You are running headless: nobody is available to answer. Treat the answers below as my replies to your question rounds, in the order the questions would come up. For anything not covered, take the recommended option. I approve writing every file you show a diff for, using the default action unless I say otherwise below. Do the full flow including the parse check and the visibility check, and skip the smoke test. Do not commit anything.

Harness: other, called Plainbot. Its docs are in the file `docs/plainbot.md` in this repo; use that as the docs URL.
Scope: project. Strictness: strict. Git: local only. Roles: defaults plus code-reviewer (so five roles).
`plainbot --list-models` is not installed. Ask me for the values: I answer "use the main session's model for everything" .
Facts: confirm everything you found.

Input files: README.md
