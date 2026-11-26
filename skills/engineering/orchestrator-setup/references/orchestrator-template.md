# Orchestrator rules template

These rules are written into the instruction file inside a managed block. Fill the placeholders from the user's choices and the adapter. Include a row only for enabled roles.

## Placeholders

- `{{AGENT_DIR}}`: the project-level (or user-level) agent directory from the adapter.
- `{{ROWS}}`: one table row per enabled role, from the row list below.
- `{{STRICTNESS_ROW_NOTE}}` and `{{NO_AGENT_LIST}}`: from the strictness choice, below.

## Placement

In a new instruction file write the orchestrator block first, a blank line, then the facts block (`project-facts-template.md`), with no title. In an existing file append both after the user's text. Each block gets its own preview.

## Block (write exactly this, adapted)

```
<!-- orchestrator-setup:begin catalog <catalog date> -->
## Orchestrator

This session is an orchestrator. It plans, delegates, reads reports and talks to the user. Agents are defined in {{AGENT_DIR}} and are generic: everything project-specific they need comes from this file. Use them as below; do not skip them or do their work inline.

| Work | Agent | Rule |
|---|---|---|
{{ROWS}}

Normal flow: explorer if context is missing, then implementer, then verifier, with a fix loop if needed. Run security-auditor at the end of the milestone.

- Each agent starts cold. Its brief must name the files, the exact goal, the facts already established in this session, and what "done" looks like.
- Agent reports are claims, not proof. Before reporting to the user, check the key claim yourself, for example with a diff, a test run or a line of code.
- If an agent says it was denied permission for an action, do not perform that action yourself to get around the denial. Tell the user.
- In every summary, say which agents ran and what each one found.
- Only these may be done without an agent: {{NO_AGENT_LIST}}
<!-- orchestrator-setup:end -->
```

Heading: the block heading is `## Orchestrator`. If the instruction file already has a heading with that text outside the managed markers, use `## Orchestrator rules` for the block instead, never delete or rename the user's heading, and tell the user about the clash and about any user text that conflicts with the rules (for example a line saying they prefer to edit by hand).

A role the user skipped as a file (for example because they keep their own agent of that name) keeps its row if an agent of that name exists, and the report says it is the user's own file and may not follow the catalog prompt. A role with no agent at all gets no row.

The "Normal flow" sentence is built from the enabled roles only, in this order: explorer if context is missing, implementer, verifier, a fix loop if needed, security-auditor at the end of the milestone.

Omit sentences about a role that is not enabled (for example the "Normal flow" sentence names only enabled roles; drop the explorer, verifier or security-auditor part if that role is off, and say what replaces it). If the user turned off the verifier, say in the report that work will be reported unverified.

## Strictness

- strict (default): `{{NO_AGENT_LIST}}` is "the instruction file, agent config, the ignore file, and plain git operations (branch, and commit when asked)." The implementer row's rule has no exception.
- trivial edits allowed (setup choice): `{{NO_AGENT_LIST}}` is the same text followed by "and trivial edits. A trivial edit touches one file and changes no behaviour (a typo, a comment, formatting). Anything else goes to the implementer." Add the same definition to the implementer row.

## Rows

Write the rows exactly as below, in plain text.

| Work | Agent | Rule |
|---|---|---|
| Finding files, reading code, mapping data or schemas, any "where/what is X" question | explorer | Use it instead of reading many files yourself. One or two direct reads for a narrow question are fine. |
| Any change to code, tests, scripts or fixtures | implementer | Give it one scoped task with a definition of done. Run tasks in parallel only if they touch different files. |
| Checking implementer work | verifier | Always run it after an implementer finishes, before telling the user the work is done. Send any findings back to the implementer, then verify again. |
| Derived data (feature dumps, fixtures, model outputs) | data-qa | Run it after code first produces such data, and after any change to that code. |
| Security and data safety | security-auditor | Run it once per finished milestone, covering all changes since the last audit. Never per edit. |

Custom roles: write a row from the purpose the user gave, in the same style: when to use it and the one rule that matters.

If the harness has an agent-directory name different from the one shown here, use the adapter's name only.
