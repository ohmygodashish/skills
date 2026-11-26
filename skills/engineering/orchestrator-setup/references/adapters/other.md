# Adapter: other harness (driven by a docs URL)

Used when the user's harness has no adapter here. There is no last-known format, so nothing can be written without live docs or the user's answers. Everything from this adapter is reported as less verified.

## Procedure

1. Ask the user for the harness name and the URL of its current docs (the page on custom agents or subagents, and the index). If they do not have one, offer to search the web for the official docs and let them confirm the result.
2. Fetch the pages. Follow `checklist.md` item by item, writing down the answer and the page it came from.
3. If the harness has no custom agent or subagent feature, stop. Say so, and offer instead to write the role prompts into a single reference file and the orchestrator rules into its instruction file, so the user can run roles by hand. Do that only after a yes.
4. If an item cannot be answered from the docs, mark it unknown and ask the user. If it blocks the write (agent location, file format, instructions field), stop and say what is missing.
5. Show the user the filled checklist (the explorer preview in step 6 carries the request for approval) before writing: location, format, how a read-only role is made (or "cannot restrict"), model and effort fields and valid values, instruction file, loading behaviour, smoke-test command.
6. Render one agent file first (the explorer) and show it as its own step 7 preview. Only after the user confirms the format looks right, render and write the rest.
7. Stamp: put it where it stays outside the prompt text. Preference order: a comment the format allows, then a documented field the harness ignores, then a sidecar line. If neither is legal, put the stamp in a sidecar line inside the instruction file block listing each agent file and its catalog date, and say so. If the docs limit a field's length (for example a one-line summary), shorten the catalog description without changing its meaning and show it in the diff.
8. Model and effort choices follow `../model-discovery.md`, including inherit where the docs say omitting the field inherits.
9. Run verification (`verification.md`). If the harness has no way to validate or list agents, report those checks as not verified.
10. In the report, say plainly that this setup rests on docs read in this run and on the user's confirmation, and that nothing was checked against a known-good example.

## Access classes

Decide per harness from the docs. If the docs show no way to remove write tools, every read-only and scoped-write role is advisory.
