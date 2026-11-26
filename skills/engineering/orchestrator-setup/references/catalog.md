# Role catalog

Catalog date: 2026-11-26

This file is the index. Each role's description and prompt live in `roles/<name>.md`. Prompts are generic: everything project-specific comes from the project's instruction file.

## Tiers and effort

Roles ask for a capability tier, never a model. Discovery (`model-discovery.md`) maps each tier to a real choice at setup time.

| Tier | Meaning |
|---|---|
| fast | Cheapest and quickest. Wide read-only searching and summarising. |
| balanced | A solid coding model. Writing and changing code. |
| strongest | The best reasoning available. Verification, review, security, design. |

Effort is a separate dial: low, medium or high. Map it to the values the harness accepts (adapter). If the harness has no effort setting, omit it and say so in the report.

If a harness offers no distinct tier, use the nearest available tier and say so in the report.

## Access classes

| Class | Meaning | Enforcement |
|---|---|---|
| read-only | Edit and write tools removed. A shell may stay, because roles run commands such as git, tests and benchmarks. | Tools removed where the adapter allows it. Shell use is advisory: the role prompt says never to write tracked files, and the report tells the user the shell can still write. |
| scoped-write | May write one kind of file only (tests, docs, manifests, CI files). | Advisory unless the adapter documents path-scoped permissions. The role prompt states the scope. |
| full | All tools. | None needed. |

If the harness cannot restrict tools at all, every read-only and scoped-write role is advisory. Say so for each role in the final report.

## Roles

Default: `on` is pre-ticked, `suggest` is offered only when exploration finds a matching signal, `opt-in` is unticked.

| Role | Default | Tier | Effort | Access | Suggest when |
|---|---|---|---|---|---|
| explorer | on | fast | high | read-only | always |
| implementer | on | balanced | high | full | always |
| verifier | on | strongest | high | read-only | always |
| security-auditor | on | strongest | high | read-only | always |
| data-qa | suggest | strongest | medium | read-only | derived data, feature or label code, fixtures, model outputs |
| planner | opt-in | strongest | high | read-only | |
| test-writer | opt-in | balanced | high | scoped-write (test files) | a test suite exists |
| code-reviewer | opt-in | strongest | medium | read-only | |
| debugger | opt-in | strongest | high | read-only | |
| docs-writer | opt-in | balanced | medium | scoped-write (docs and doc comments) | docs folder or README beyond a stub |
| dependency-manager | opt-in | balanced | high | scoped-write (manifests, lockfiles) | a package manifest exists |
| performance-profiler | opt-in | strongest | high | read-only | benchmark files or profiling config |
| ci-release | opt-in | balanced | medium | scoped-write (CI, build, release files) | CI config exists |
| ui-tester | opt-in | balanced | medium | read-only | a web, mobile or desktop UI exists |
| migration-guardian | opt-in | strongest | high | read-only | migration folder or database schema files |

`debugger` and `performance-profiler` may run commands and use scratch copies. Their prompts forbid changing tracked files.

## Orchestrator rows

Each role's row in the orchestrator rules is in `orchestrator-template.md`.

## Custom roles

During setup the user may add roles. For each one collect: a name matching `^[a-z][a-z0-9-]{0,40}$` (no slashes, dots or spaces; reject a name that is already used by another agent file unless the user says replace), one-line purpose, tier, effort, access class and any hard limits. Draft the description and prompt in the same style as the roles above (generic, reads the instruction file first, states its limits, says what to report, treats an unknown fact as a gap). Show the draft and wait for approval. A custom role is stored in the generated agent file only, and carries a stamp with `custom` in place of a catalog hash. Update modes never resync custom roles from the catalog.
