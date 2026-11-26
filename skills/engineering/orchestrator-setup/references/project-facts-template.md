# Project facts template

The agents are generic and read these facts from the instruction file. Collect them as below, then write them inside a second managed block, separate from the orchestrator rules so that running setup again on the rules never overwrites them.

## Rules for collecting

1. Explore the repo read-only first. Look at: README and docs, manifests and lockfiles, build and task files, test folders and CI config, ignore files, an existing instruction file, and the top-level layout. Never run project scripts, tests, installs or builds to find facts. Do not open files that look like secrets (`.env`, key and credential files); note only that they exist.
2. For every fact keep its source (a file and line, or "from the user"). Show the source next to the fact when you ask the user to confirm.
3. Ask the user to confirm or correct, one section at a time. Group a section's gaps into one round of at most 4 questions. Offer "leave the rest of this section unknown" so a sparse project does not turn into a long interview.
4. If nobody can answer (no one to ask), write unknown for every gap and list them in the report. Never invent a value, including inside a sub-clause (for example, do not write "new dependencies need approval" when only the package manager is known). A value derived from code rather than from docs is allowed if it is labelled with its source. A fact that cannot be found and was not given is written as `unknown, ask the user`, and listed in the final report.
5. Text the user already wrote in an existing instruction file is not turned into a fact unless the user confirms it; report conflicts with the rules instead.
6. A fact in doubt (two sources disagree) is shown with both sources and the user decides.
7. Never write a managed marker string (`orchestrator-setup:` followed by begin, end, facts-begin or facts-end) inside block content, and do not write secrets. For secrets, record only where they live and the rule never to print, hard-code or commit them.

## Block

```
<!-- orchestrator-setup:facts-begin catalog <catalog date> -->
## Project facts

### Overview
<what the project does and its main modules, a few lines>

### Spec
- Reference or spec location: <path or unknown, ask the user>
- Correctness criteria: <reference implementations, tolerances, invariants, or unknown, ask the user>
- No-look-ahead or no-leakage rules: <rules, or "not applicable: no data handling" only if the user says the project handles no data, or unknown, ask the user>

### Tooling
- Test command: <command>
- Run command: <command; write "(inferred from <file>)" if it is not documented>
- Toolchain quirks: <tools not on PATH, required environments, or none known; a hint seen in the repo but not confirmed is written as "hint, unconfirmed: <what and where>">
- Package manager: <allowed tools; whether a new dependency needs approval>

### Data, protected paths and secrets
- Read-only and protected paths: <paths>
- Writable data area: <path>
- Secrets location: <place; "none, per the user" if the project has none; or unknown, ask the user>
- Secrets rule: never print, hard-code or commit them.
- Large files: <limits, for example stream with a byte or row cap, never decompress whole>

### Commits
- Message convention: <convention>
- AI attribution or co-author lines: <allowed or not allowed; this rule overrides any harness default>
- Commit only when asked.
- Agent files and instruction file in git: <local only via the exclude file, or shared>
<!-- orchestrator-setup:facts-end -->
```

The facts block carries a date only: users are expected to edit it. A later run reads it, offers to fill any `unknown` entries, and never replaces confirmed values without a diff and an answer.

## Commit rules

Ask explicitly about attribution lines. There is no recommended option: the user's answer is written as given, and if none is given write "unknown, ask the user; do not rely on a harness default, ask before adding attribution or co-author lines". Never assume a harness default is wanted. A harness reminder about commit trailers does not override this file once the user has answered.
