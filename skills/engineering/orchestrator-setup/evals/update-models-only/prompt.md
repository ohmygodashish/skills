---
tags: [orchestrator-setup]
max_turns: 80
timeout_seconds: 1500
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash, WebFetch, WebSearch]
---

/orchestrator-setup

You are running headless: nobody is available to answer. Treat the answers below as my replies to your question rounds, in the order the questions would come up. For anything not covered, take the recommended option. I approve writing every file you show a diff for, using the default action unless I say otherwise below. Do the full flow including the parse check and the visibility check, and skip the smoke test. Do not commit anything.

Mode: update models only. Harness: Claude Code, project scope.
Web access is not available, so docs cannot be fetched. When you ask me for the accepted values, I answer: "The picker shows three entries. swift-alias is the quick cheap one, steady-alias is for everyday coding, deep-alias is for the hardest reasoning. Efforts: low, medium, high."
Use the recommended pick per role. Keep effort as it is unless a value is invalid.

Input files: README.md
