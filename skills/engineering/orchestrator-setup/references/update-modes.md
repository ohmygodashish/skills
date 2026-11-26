# Update modes and the stamp

## The stamp

Every generated file carries a one-line stamp in a comment form the harness accepts (the adapter says where a comment may go, for example after the frontmatter, or as a line comment in a TOML file).

Agent file:

```
orchestrator-setup catalog <catalog date> role=<name>
```

Custom role: `orchestrator-setup custom role=<name>`.

- `<catalog date>` is the "Catalog date" line in `catalog.md`.
- The orchestrator block in the instruction file carries the same date on its begin marker (see `orchestrator-template.md`). The facts block carries a date too.
- The stamp sits outside the prompt text, so "update models only" never changes it.
- The stamp tells a later run which catalog a file came from. It does not detect hand edits: a diff does that.

## Detecting an existing setup

Look for stamps in the agent directories (project and user level) and for the begin markers in the instruction files. Report each file, and the orchestrator block, as one of:

| Class | Meaning |
|---|---|
| current catalog date | stamp date equals the catalog date |
| older catalog date | stamp date is earlier than the catalog date |
| unstamped/custom | no stamp, or the stamp says custom |

The facts block is not classified; report whether it is present. Show this report first, in every run that finds an existing setup (a fresh project has nothing to report; say so).

## Modes

Two modes, plus normal setup. Every mode shows a diff before writing and asks per file. Nothing is written without an answer.

| Mode | Steps that run (see SKILL.md) | Skipped | Default action |
|---|---|---|---|
| update models only | 1, 4, 5, 7, 8, 9, 10 | 2, 3, 6 | apply the field edit, per file |
| status | 1, 10 | everything else | none, writes nothing |

In both modes the adapter check (step 4) still runs where the table lists it, because field names and valid values may have moved. If docs cannot be fetched, use the last-known section and warn the user.

1. **Update models only.** Re-run model discovery (`model-discovery.md`) for the roles in the existing setup. Rewrite only the model and effort fields. Do not touch prompts, descriptions, tool lists or stamps. Show the old and new value per role. It works on files the user has edited, because it edits fields only. The exclude file is not touched.
2. **Status.** Read-only. Print the report above, the models and effort per role (alias or pinned if known), and any unknown facts in the facts block. Write nothing.

## Changing roles or refreshing prompts

Adding or changing roles, or refreshing prompts from a newer catalog, means running normal setup again (steps 1 to 10). Setup shows a diff for each existing file and asks merge, replace or skip. The default for an existing agent file that differs from what setup would write is skip, and the skill says so. The user chooses replace per file to take the catalog's prompt.

Setup never deletes a file. To remove a role, the user deletes its agent file and its row in the orchestrator table by hand.

New files default to "write" after their preview is approved. The exclude file's default action is append: a comment line `# orchestrator-setup (local only)` and one anchored per-file path per entry (leading slash). Find it with `git rev-parse --git-path info/exclude`.

If files exist without stamps, treat them as unstamped: show them, never overwrite by default.
