# Model discovery

Goal: find which models exist for this harness and account today, group them by capability tier, and pick one per role. This skill never contains model names. Every model value written to a file must come from a source found in this run or from the user.

## Source order

Try in order. Stop at the first source that gives a usable list, but keep going if it covers fewer than the tiers you need.

1. **The harness itself.** Read the adapter's "model listing" section for what to try: a CLI command, a settings file, documented aliases, or a picker. Run a listing command only if current docs or the harness's own CLI help show that it exists, it is read-only, and it needs no login step you would have to perform. The CLI help is the authority on whether a command exists; the docs may lag. If the only listing is an interactive picker, record source 1 as skipped (interactive only), do not try to drive it; go to source 3 for that harness after source 2.
2. **Current official docs.** Fetch the model documentation pages named in the adapter. Follow redirects. If a page moved, search the harness's docs index. Read the page text, not a summary of it, where you can.
3. **Ask the user.** Ask them to paste the identifiers or aliases their harness accepts (from the picker or their account page), and which they want for each tier.

If all three fail, say so, record "model discovery failed" in the report, and offer two safe choices: inherit from the main session (where the adapter says the harness supports it), or omit the model field so the harness default applies. Never fall back to a remembered name.

## Grouping into tiers

- Use the source's own wording about each model's purpose or cost (for example "fast", "cheap", "simple tasks", "daily coding", "complex reasoning", "hardest tasks"). Map: quick or cheap, fast; everyday coding, balanced; deepest reasoning, strongest.
- Do not infer a tier from a name, a number or a position in a list.
- If the sources give no usable wording, show the list ungrouped and ask the user to assign tiers.
- If a tier has no candidate, say so and ask: use the nearest tier, or inherit where supported. Never choose inherit silently.
- Where a listing shows the models this account can use and the docs name others, the listing wins for availability and the docs supply the wording for tiers. Tell the user about the disagreement. Do not recommend entries the source marks hidden, legacy or deprecated unless the user asks for them.
- Show the grouping with the source of each entry. Show only the tiers needed by the enabled roles.
- A list the docs call a sample or an example, or a list for a command that is not installed, needs the user's confirmation before use.

## Alias or pinned

- An alias is a value the docs describe as following the newest model of a family or role. A pinned ID names one specific model.
- Where the harness has aliases, offer for each pick:
  - alias (auto-updates): nothing retires under you; behaviour can change silently when the alias moves;
  - pinned ID (reproducible): runs are repeatable; the model will eventually be retired, and the agent then breaks until "update models only" is run.
- Default: alias (decision D7). Mark each role's choice as alias or pinned in the report.
- If the harness has no aliases, the value is pinned by nature. Say so.
- When docs could not be read, classify a value as alias or pinned only from the user's word. If the user does not say, record it as "kind unknown" in the report. Never infer it from the shape of a name.

## Inherit

When the user wants the main session's model, use the adapter's inherit value if it documents one, otherwise omit the model field. Where the adapter says a role can inherit the main session's model, offer "inherit from the main session" as a choice. State the trade-off: nothing can go stale, but the tier has no effect for that role.

## Recommending a pick per role

For each enabled role take the role's tier from `catalog.md`. If several candidates fit the tier, show all of them with the source's own wording, recommend the one whose wording best matches the role's purpose and say why, and never rank by name, number or list position. Prefer an alias when the user chose the alias default. Present one question round per at most 4 roles, or group roles with the same tier ("these four roles share the strongest tier: use X for all?") to keep rounds short. Always show the effort per role and the value the harness will receive. A role that inherits the model still gets an effort value, marked "not confirmed" because the inherited model is unknown.

## Effort

Map low, medium and high to the values the adapter lists as valid. If a value is not valid for the chosen model, use the nearest valid value below it and say so in the report. If the harness has no effort setting, omit the field and report that. If the docs list the value as valid but the model an alias resolves to is unknown, report "documented valid, not machine-validated". If validity cannot be checked at all (no matrix, no validator), write the catalog effort, mark it "not confirmed" in the report, and offer to omit the field instead.

## Validate

After choosing, check each value where the harness allows it: its own validator, a documented dry run, or the smoke test. A value that fails validation goes back to the user, never replaced silently. If nothing can validate a value, say "not machine-validated" in the report. When the provider or account may differ from the docs (for example a custom endpoint is configured), say that validity of the model and effort values is unconfirmed until the smoke test or first use.
