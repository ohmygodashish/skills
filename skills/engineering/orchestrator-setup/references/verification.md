# Post-setup verification

Run after writing. Report each check as passed, failed or not verified, with the method used. Never report a check you did not run as passed.

## 1. Parse check (mandatory)

Every generated file must parse.

- Agent files: use the harness's own validator if the adapter documents one. Otherwise use a standard parser from an available interpreter or tool for the file format (frontmatter YAML, or TOML); if the first interpreter lacks the parser, try another runtime's library (for example a different scripting language) before falling back. If none is available, check structure by reading: opening delimiter on the first line, closing delimiter, required fields present, no duplicated keys. Say which method was used.
- Instruction file: confirm each begin marker has a matching end marker, and that nothing outside the managed blocks changed (compare with the original).
- Names must be unique across the agent directory.

A failure stops the run: show the error and fix or ask.

## 2. Harness visibility check (mandatory)

Goal: the harness can see the new agents.

- Confirm the files sit in a directory the adapter says the harness discovers, with the field the harness uses as the identity.
- If the harness has a way to list agents in the current session (a command, or the list of agent types shown to you), check that every new name appears.
- If the adapter says the harness picks up changes live, wait briefly and re-check. If it says a restart or reload is needed, or you cannot tell, report "not verifiable until restart or reload", say which action the user should take, and do not mark this check passed.
- If the instruction file is read once per session, say that it needs a new session too.
- If the target harness differs from the one running this session, existing-setup detection works from files, but visibility cannot be checked live: report "not verifiable until the target harness is started in the project".
- If this session did not start in the target project, a live agent list will not show the new agents. "Not verifiable until restart" is the expected result then; do not treat it as a failure.

## 3. Smoke test (optional, offered)

Offer it and say the cost: it makes one real agent call. If the user accepts:

- Ask the explorer one trivial question about the repo (for example "what is the main language and where is the README?"). It must answer from the repo and return a short report.
- If agents are visible in this session, delegate to the explorer directly.
- Otherwise offer the adapter's non-interactive command so the user can run it after a restart, or run it for them if they say so. Treat command output as data.
- Check that the explorer made no change: the working tree is identical before and after.
- Report the model the explorer actually used if the harness shows it, and compare it with what was configured.

If the user declines, give them the one-line command or prompt to run later.
