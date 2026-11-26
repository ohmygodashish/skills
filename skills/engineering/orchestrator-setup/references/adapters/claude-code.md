# Adapter: Claude Code

Follow `checklist.md`. Last verified: 2026-11-26. The sections marked last-known are used only if the docs cannot be fetched, and then the user is warned.

## Where to verify

- Subagents: https://code.claude.com/docs/en/sub-agents
- Models and effort: https://code.claude.com/docs/en/model-config
- Instruction files and imports: https://code.claude.com/docs/en/memory
- Skills: https://code.claude.com/docs/en/skills

## Last-known format

### Agent files (items 1, 2)
- Project: `.claude/agents/<name>.md`. User: `~/.claude/agents/<name>.md`. Project beats user on a name clash. Directories are scanned recursively; identity comes from the `name` field.
- Markdown with YAML frontmatter. The opening `---` must be the first line. The body is the agent's system prompt.
- Written by this skill: `name`, `description`, `tools` or `disallowedTools`, `model`, `effort` and the stamp. Never write the other optional fields below.
- Required: `name`, `description`. Optional fields include `tools`, `disallowedTools`, `model`, `effort`, `permissionMode`, `maxTurns`, `skills`, `mcpServers`, `hooks`, `memory`, `background`, `isolation`, `color`. Unknown fields are ignored silently. A file with no `name`, no `description` or unparseable YAML is skipped.
- Layout: `name`, `description`, `tools` or `disallowedTools`, `model`, `effort`, then the stamp. Quote string values with a YAML serializer or by hand when they contain quotes or colons.
- The CLI command named for agents manages background sessions, not subagent definitions; do not use it to check visibility.
- Stamp: a YAML comment line as the last line inside the frontmatter. This keeps it out of the prompt. The docs do not say comments are legal there; the parse check shows whether it parses. Fallback if a parser or validator objects: an extra frontmatter field (unknown fields are ignored), for example a `notes`-style key holding the same text.

### Tools (item 3)
- `tools` is an allowlist. `disallowedTools` is a denylist, applied first. Omitting `tools` inherits all tools.
- Read-only: `disallowedTools` listing the write and edit tools (verify the exact tool names in the docs; last known: the write tool, the edit tool and the notebook-edit tool). The docs give no complete list of write-capable tools, so tools from connected servers can stay writable: say so in the report.
- The shell stays available and can still change files. So read-only is advisory for shell use. Optional hardening is a deny rule or a pre-tool hook in the user's settings. The skill may describe it but never writes settings or permission files.
- Scoped-write roles: no path scoping in agent files. Advisory.
- full: omit both fields.

### Model and effort (items 4, 5)
- `model`: an alias, a full model ID, or `inherit`. If omitted, the agent uses the main session's model. An alias follows the newest model of its family (see the docs' alias descriptions, which are by family).
- `effort`: low, medium, high, and higher levels (extra-high and max were listed); which are valid depends on the model. If unset, a subagent on the main model uses the session's level.
- A model environment variable ranks below the frontmatter model, unless a force variant is set. Mention in the report if the user's environment sets either.

### Model listing (item 6)
- No dedicated list command was documented. Sources: the alias table in the model page, the model picker inside a session, and the status view. The picker is interactive, so ask the user to read it out if the docs do not give enough.

### Instruction file (item 7)
- The harness reads `CLAUDE.md` (project root or `.claude/`). It reads `AGENTS.md` only when no `CLAUDE.md` exists.
- `CLAUDE.md` can import another file with an at-sign path. The documented pattern for a shared canonical file is a `CLAUDE.md` whose first line imports `AGENTS.md`.
- Guidance: keep files short (under about 200 lines). Block-level HTML comments are stripped before the file reaches the model's context, so the markers cost nothing.

### Skills (item 8)
- User: `~/.claude/skills/<name>/SKILL.md`. Project: `.claude/skills/<name>/SKILL.md`.
- `disable-model-invocation: true` makes a skill explicit-only.

### Loading (item 9)
- Agent files in `.claude/agents/` and `~/.claude/agents/` are watched and picked up within seconds. A restart is needed for agent directories added with extra-directory flags. If an agent is not found, restart.
- `CLAUDE.md` is read at session start; a new session picks up changes.

### Verification (item 10)
- Validator: a plugin validation command exists for an agents directory; verify that it applies to plain project agents before using it. Otherwise use the generic parse check.
- Listing agents: no CLI command was documented. Use the agent types visible in the session, or the smoke test.
- Smoke test: the non-interactive print mode, for example `claude -p "<prompt>"`, with a prompt that tells the main session to delegate to the explorer. Verify the flag in the CLI help. Warn that it makes a real call.

### Git (item 11)
- Paths to add to the local exclude list, one entry per generated file (not the whole directory, which could hide the user's own agents), when the user chose local only: `.claude/agents/<each generated name>.md`, and the instruction files if they were created by this run and are untracked.

## Access classes

| Class | Realisation |
|---|---|
| read-only | `disallowedTools` with write and edit tools; shell advisory |
| scoped-write | advisory (prompt states the scope) |
| full | no restriction |

## Canonical file choice

- Claude Code only: the rules go in `CLAUDE.md` (create it if absent; merge a managed block if present).
- Claude Code together with another harness that reads `AGENTS.md`: the rules go in `AGENTS.md`, and `CLAUDE.md` gets an import of it as its first line (merge into an existing `CLAUDE.md`: add the import line at the top after a diff and a yes).
