# Update modes and the stamp

## The stamp

Every generated file carries a one-line stamp in a comment form the harness accepts (the adapter says where a comment may go, for example after the frontmatter, or as a line comment in a TOML file).

Agent file:

```
orchestrator-setup catalog <catalog date> role=<name> sha=<12 hex characters>
```

Custom role: `orchestrator-setup custom role=<name>`.

- `<catalog date>` is the "Catalog date" line in `catalog.md`.
- `sha` is the first 12 hex characters of the 256-bit SHA digest of the role's prompt text, computed only with `scripts/prompt-hash.sh` so that every run uses the same normalisation. Catalog prompt: `scripts/prompt-hash.sh --role <name>`. Prompt text in a generated file: extract the prompt text as the adapter describes (the body after the frontmatter, the instructions string of a TOML file, and so on, without the stamp line) and pipe it to the same script. If the script cannot run, write the date only, omit `sha`, and say in the report that edit detection is off.
- The hashed text is the decoded prompt: for a JSON or TOML string, the string's value, not its escaped form.
- The prompt text is the prompt only: never the stamp line, frontmatter, other fields or surrounding syntax.
- The orchestrator block in the instruction file has its stamp on the begin marker (see `orchestrator-template.md`); its hash is `scripts/prompt-hash.sh` applied to the text strictly between the begin and end marker lines. The facts block has a date and no hash.
- Model and effort fields are outside the hash, so "update models only" never changes it.


## Detecting an existing setup

Look for stamps in the agent directories (project and user level) and for the begin markers in the instruction files. For each stamped file compare:

- stamp sha versus the sha of the file's current prompt text: different means the user edited it by hand;
- stamp sha versus the current catalog's sha for that role: different means the catalog moved on (older setup), or the role prompt in the catalog changed;
- stamp date versus the catalog date.

Classify each file with these three hashes (stamp, file, catalog):

| stamp = file | file = catalog | Class |
|---|---|---|
| yes | yes | current |
| yes | no | older catalog (clean): safe to resync |
| no | yes | stamp stale, content equals the catalog: treat as current, offer to refresh the stamp |
| no | no | hand-edited |

Also: custom (stamp says custom), unstamped (no stamp). Include the orchestrator block in the table (its hash covers the text between the markers; the facts block has a date only and is never classified as edited). Show this table first, in every mode that finds an existing setup (a fresh project has nothing to classify; say so). A missing facts block is reported as absent. The exclude file is not touched in models-only mode.

## Modes

Find the exclude file with `git rev-parse --git-path info/exclude`. The exclude file: append a comment line `# orchestrator-setup (local only)` and one anchored per-file path per entry (leading slash). Its default action is append.

Every mode shows a diff before writing and asks per file. Nothing is written without an answer. The default action is the one named in the table. A file that does not exist yet defaults to "write" after its preview is approved.

| Mode | Steps that run (see SKILL.md) | Skipped | Default action |
|---|---|---|---|
| update models only | 1, 4, 5, 7, 8, 9, 10 | 2, 3, 6 | apply the field edit, per file |
| add or remove roles | 1, 3 (new roles only), 4, 5 (new roles only), 7, 8, 9, 10 | 2, 6 | add: write the new file; remove: skip unless the user says yes |
| resync role prompts | 1, 4, 7, 8, 9, 10 | 2, 3, 5, 6 | older catalog (clean): replace; hand-edited: skip; stamp stale: refresh stamp only |
| status | 1, 10 | everything else | none, writes nothing |

In every mode the adapter check (step 4) still runs, because field names and valid values may have moved. If docs cannot be fetched, use the last-known section and warn the user.

1. **Update models only.** Re-run model discovery (`model-discovery.md`) for the roles in the existing setup. Rewrite only the model and effort fields. Do not touch prompts, descriptions, tool lists or stamps. Show the old and new value per role. Works on hand-edited files because it edits fields only.
2. **Add or remove roles.** Add: run the setup questions for the new roles only (tier, model, effort), write the agent files, and add rows to the orchestrator block. Remove: delete the agent file after a diff and a yes (this is a deletion, so name each file and say it cannot be undone except through git), and remove the row. Other roles are not touched.
3. **Resync role prompts.** For each stamped role whose catalog sha differs, show a diff of old prompt versus catalog prompt and offer replace or skip. For a hand-edited file default to skip and say so; if the user chooses merge, show a three-way view (stamp-time prompt cannot be reconstructed, so show current file versus catalog) and let the user choose per hunk. Also resync the orchestrator block the same way. Keep the existing model and effort fields.
4. **Status.** Read-only. Print the classification table, the models and effort per role (alias or pinned if known), and any unknown facts in the facts block. Write nothing.

## Setup from an older layout

If files exist without stamps, treat them as unstamped: show them, never overwrite by default, and offer to adopt them (add a stamp after a diff and a yes) or to leave them alone.
