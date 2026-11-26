# Design decisions: orchestrator-setup

| ID | Decision | Chosen | Rejected | Reason |
|---|---|---|---|---|
| D1 | Skill name | `orchestrator-setup` | `agent-team-setup`, `subagent-workflow` | Names the outcome; least likely to fire on unrelated asks. |
| D2 | Harnesses that load the skill, and packaging | Single `SKILL.md` folder, no wrappers | Per-harness wrappers; stub-if-needed | Repo already loads one folder from `~/.claude/skills` and `~/.agents/skills`; wrappers add drift. |
| D3 | Install scope of the skill | Not chosen by the skill. Distributed via `npx skills@latest add`, which lets the installer pick scope. `link-skills.sh` is dev-only. | User-level only; project-only | Your answer: npx is the install path; the link script just links repo skills for maintainers. I will run neither until "install". |
| D-build | Build location | `skills/engineering/orchestrator-setup` in the skills repo, plus `docs/engineering/orchestrator-setup.md` and a README row. Session moves to the repo at build time, after "go". | Standalone folder | Follows repo layout. |
| D-trigger | Trigger mode | Explicit-only (`disable-model-invocation: true`), and SKILL.md also says to run only on explicit request | Auto-trigger | Writes agent files and edits instruction files; must not misfire. |
| D4 | Harnesses the skill can set up | Claude Code and Codex first-class; "other" via docs URL (best-effort, flagged as less verified) | Claude Code only; a third named harness | Matches Part 2; two adapters stay testable. |

| D5 | Role defaults | Core 4 (explorer, implementer, verifier, security-auditor) on; data-qa suggested only if exploration finds derived data; all 4B roles opt-in; custom roles allowed (one prompt-writing round) | All 4A on; fixed catalog | Small default footprint; custom roles keep it extensible. |
| D6 | Tier and effort defaults | As in Parts 3 and 4, unchanged. Missing tier on a harness: use nearest tier and say so. | Downshift debugger/profiler; no defaults | Your starting point stands. |
| D7a | Discovery order | Harness listing, then current docs, then ask the user | Docs first; always ask | Listing shows what the account can actually use. |
| D7b | Alias vs pinned | Floating alias by default where the harness has them; pinned ID offered per role with a one-line trade-off | Pinned default; inherit by default | Nothing retires under you. Offer "inherit" where the harness supports it. |

| D8 | Instruction file | One canonical file (adapter decides, default AGENTS.md) holds the rules between begin/end markers; the other file gets a one-line pointer only if the adapter confirms the harness follows it, else a duplicated block with a drift warning. Text outside markers is never touched. | Full block in both; own-harness file only | Avoids drift and keeps merges safe. |
| D9 | Strictness | Strict by default; "trivial edits allowed" is a setup choice, defined as one file, no behaviour change | Trivial allowed by default; strict with no option | Keeps the verifier loop honest. |
| D10 | Git | Local only via `.git/info/exclude`; skill never commits; already-tracked files are reported and skipped | Leave unignored; `.gitignore` | Touches no tracked file. |
| D11 | Update modes and stamp | Modes: models-only, add/remove roles, resync prompts, read-only status. Stamp: comment with catalog date and per-role content hash, placed where the adapter says a comment is legal. Date and hash are not model versions; the stale-grep checks model names/IDs/version numbers, not this stamp format. | Integer revision; date only | Hash detects hand edits, date detects an older catalog. |

| D12 | Conflicts | Diff always shown. Per file: instruction file defaults to merge (marked block only); agent file defaults to skip if it differs and is not ours, clean update offered if stamp and hash match. No backups. Nothing written without an answer. | Timestamped .bak; one choice per run | Git or the diff is the undo; no stray files. |
| D13 | Project facts | Explore read-only (never run project scripts or tests); show each fact with its source file; confirm per section; unknown written as "unknown, ask the user" and listed in the final report; role prompts say report back, never guess | Ask everything; auto-accept high-confidence | A wrong inferred command would be trusted by every agent. |
| D14 | Verification | Parse and visibility mandatory (visibility says "not verifiable until restart" when so); smoke test optional but offered, run now if agents are visible, else a one-line command for later | All three mandatory; parse only | Mid-session visibility is not always possible. |
| D15 | Testing | Fixture repos in temp dirs, with/without-skill runs, graded by assertions, via the skill-creator flow. Both CLIs are installed here, so Claude Code and Codex scenarios can be run for real. | Static checks only; manual checklist | Proves behaviour, not just well-formedness. |

## Approved with "go"
- No em dashes anywhere in the skill; the "unknown" marker is written "unknown, ask the user".
- Stale check: `scripts/check-stale.sh` matches shapes only (dotted or dated version tokens). The catalog-date and "last verified" stamps and the eval `schema_version` line are exempt. A model-name denylist lives outside the skill folder.
- Role prompts live one per file under `references/roles/`, with a `catalog.md` index.
- "Read-only" removes write and edit tools where the harness allows it; the shell can still write, so these roles are advisory on shell use. "Files only" roles are advisory unless the harness has path-scoped permissions.
- Build in the skills repo on branch `feat/orchestrator-setup-skill`; nothing installed until "install".

## Added during build (from eval findings)
- `scripts/prompt-hash.sh` is the only way to compute stamp hashes.
- Status table classes from stamp, file and catalog hashes; per-mode step map and defaults in `update-modes.md`.
- Heading clash: managed block heading becomes `## Orchestrator rules` when the user's own heading exists.
- Listing commands: the CLI's own help is the authority; the account listing beats docs for availability; hidden, legacy and deprecated entries are not recommended.
- Attribution has no recommended option; unanswered facts stay unknown.
- Adapter file `references/adapters/checklist.md` added to the tree.

## Findings from /Users/ashish/Developer/skills
- Layout: `skills/<category>/<name>/SKILL.md`, plus sibling `.md` files and `scripts/`. Docs page per skill at `docs/<category>/<name>.md` and a row in `README.md`.
- Distribution: `npx skills@latest add ohmygodashish/skills` (project install) and `scripts/link-skills.sh` (symlinks into `~/.claude/skills` and `~/.agents/skills`).
- Repo style: no emojis, no em dashes (`AGENTS.md`). Some skills set `disable-model-invocation: true` (explicit-only), for example `handoff`.

## Open
D3, D5 to D15, plus: build location, explicit-only trigger, em-dash handling.
