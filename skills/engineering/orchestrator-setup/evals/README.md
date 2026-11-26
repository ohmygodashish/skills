# Evals

Seven scenarios, one folder each, in the format `claude plugin eval` reads. Each case copies the shared fixture repo (`fixtures/basic`) plus its own `files/` into a fresh git repo (`place-files.sh`), then runs the skill headless with scripted answers.

| Case | Checks |
|---|---|
| fresh-setup-claude-code | Full setup with the Claude Code adapter |
| fresh-setup-codex | Full setup with the Codex adapter; advisory read-only |
| other-harness-docs-url | An unknown harness driven by a local docs file |
| update-models-only | Models-only mode on a stamped setup with a hand-edited file |
| conflicting-instruction-file | Existing instruction file and unstamped agent: merge and skip |
| harness-cannot-restrict-tools | A harness with no tool restriction |
| model-discovery-fails | Listing, docs and user all fail: fall back to inherit |

## Pass criteria (every case)

- Nothing is written before a diff or preview and an answer.
- No model name or ID is written unless a discovery source or the user supplied it in the run.
- Unknown facts stay "unknown, ask the user".
- Read-only roles have write tools removed where the harness allows it, and advisory-only roles are named in the report.
- Generated files parse; stamps carry the catalog date and a hash that matches the prompt text.
- The report states what was and was not verified.
- Tracked files are untouched; nothing is committed.

Each case's `graders/` folder holds the per-case assertions.

## Static check (run after every edit)

```bash
scripts/check-stale.sh
```

Add `--denylist FILE` with a list of model names kept outside this folder, so the skill never has to contain one. The script exits non-zero if it finds model-ID-shaped tokens or version numbers (the catalog and "last verified" date stamps are allowed).

## Running

- Scripted: `claude plugin eval . --allow-tools Write,Edit,Bash,WebFetch,WebSearch --scaffold` from the skill folder (real, billed runs).
- The cases that need the network (the two fresh setups) will behave differently offline; `model-discovery-fails` assumes no network.
