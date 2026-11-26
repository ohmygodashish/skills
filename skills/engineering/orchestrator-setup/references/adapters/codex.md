# Adapter: Codex

Follow `checklist.md`. Last verified: 2026-11-26. The sections marked last-known are used only if the docs cannot be fetched, and then the user is warned. Some of the docs were read through summaries, so treat items marked (summary) as needing a second look in the current pages.

## Where to verify

- Docs index: https://developers.openai.com/codex (it redirects to the current docs host; follow it).
- Subagents, config reference, AGENTS.md, skills, non-interactive mode and model selection are separate pages under the agent-configuration, config-file, and build-skills sections of that index.
- The open-source repository's docs folder is a second source when the site lacks detail.

## Last-known format

### Agent files (items 1, 2)
- Project: `.codex/agents/<name>.toml`. User: `~/.codex/agents/<name>.toml`. One agent per file. The `name` field is the source of truth; keep the file name equal to it.
- Written by this skill: `name`, `description`, `model`, `model_reasoning_effort`, `developer_instructions` and the stamp. Never write the `features.*` or `skills.*` keys, sandbox or approval settings.
- TOML. Required: `name`, `description`, `developer_instructions`. Optional: `model`, `model_reasoning_effort`, and some `features.*` and `skills.*` keys (summary).
- A custom agent with the same name as a built-in one overrides the built-in. If a chosen role name is `explorer`, tell the user it replaces the built-in of that name.
- Layout: stamp comment on line 1, then `name`, `description`, `model`, `model_reasoning_effort`, `developer_instructions`. Write strings with a TOML serializer or escape double quotes and backslashes by hand. Omit `model` when the role inherits.
- Put the prompt in `developer_instructions` as a multi-line literal string (three single quotes), which needs no escaping. If the prompt contains three single quotes in a row, use a multi-line basic string and escape.
- Stamp: a `#` comment line at the top of the file.

### Tools (item 3)
- No per-agent tool allow or deny list, no per-agent sandbox. Subagents inherit the parent turn's sandbox and approval settings. The docs say that asking an agent to avoid edits is not enforced by a sandbox. Path-scoped write permissions were not documented.
- So read-only and scoped-write roles are advisory only. Tell the user once, plainly, and mark each such role advisory in the report. The sandbox mode of the main session is the real control; mention it, and do not change it.

### Model and effort (items 4, 5)
- `model` and `model_reasoning_effort` per agent. Effort values include low, medium, high and higher levels; the available ones depend on the model and client.
- No alias or inherit keyword was documented. Omitting the field inherits the parent's value. Treat a documented family-following value as an alias only if the docs describe it that way; otherwise values are pinned.
- Resolution order (summary): explicit spawn value, then the agents defaults in config, then the parent's value.

### Model listing (item 6)
- The docs named no list command, but the CLI's own help listed a debug subcommand that prints the account's model catalog. Check the CLI help for it, run it only if read-only, and treat its output as the account's availability. The docs' model page supplies tier wording and may name models the account lacks.

### Instruction file (item 7)
- `AGENTS.md`, with an override file taking precedence. Global in the Codex home, project from the repo root down to the working directory, merged root first.
- Size cap for the combined project text (default 32 KiB, configurable). Orchestrator and facts blocks together must stay well under it; warn if the file is near the cap.
- `CLAUDE.md` and imports are not documented. So `AGENTS.md` must hold the real text.
- Read once per run or session; restart to pick up edits.

### Skills (item 8)
- Project and parent folders up to the repo root: `.agents/skills`. User: `~/.agents/skills`. Admin and bundled skills also exist.
- `SKILL.md` needs `name` and `description`. An optional `agents/openai.yaml` can set `policy.allow_implicit_invocation: false` to make a skill explicit-only.

### Loading (item 9)
- Not documented whether new agent files need a restart. Say "restart may be needed" and verify with the smoke test.

### Verification (item 10)
- No validator was documented. Use the generic TOML parse check.
- Smoke test: the non-interactive exec command, for example `codex exec "<prompt>"`. The docs say the default sandbox is read-only; a sandbox flag exists, and an older full-auto flag was removed. Verify in the CLI help. Warn that it makes a real call.

### Git (item 11)
- Paths for the local exclude list: `.codex/agents/<each generated name>.toml` and untracked instruction files created by this run.

## Access classes

| Class | Realisation |
|---|---|
| read-only | advisory (prompt only) |
| scoped-write | advisory (prompt only) |
| full | no restriction |

## Canonical file choice

`AGENTS.md` always holds the rules. If the user also uses a harness that reads another file, that file gets a pointer per its own adapter.
