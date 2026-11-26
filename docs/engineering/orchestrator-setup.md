# Orchestrator Setup

## What it does

`orchestrator-setup` installs a workflow in a project where the main session coordinates and specialised subagents do the work. It writes generic agent files (explorer, implementer, verifier, security-auditor and, where it fits, data-qa), the orchestrator rules, and a project-facts section into the project's instruction file.

It works for Claude Code and Codex, and for other harnesses through a docs URL. Model names are never stored in the skill: each run discovers the models that exist, groups them by capability tier, and writes the choice into the generated files.

## When to reach for it

You invoke this by typing `/orchestrator-setup`. It does not run on its own.

| Your situation | What `orchestrator-setup` gives back |
| --- | --- |
| A project with no agent setup | Agent files, an orchestrator rules block and a project-facts block, each shown as a diff before it is written |
| Models have changed | `update models only` rewrites just the model and effort fields |
| You want to know what is installed | `status` prints each file's catalog date and writes nothing |
| You want other roles, or newer role prompts | Run setup again: it shows a diff per existing file and defaults to skipping any agent file that differs |

Shipped roles: explorer, implementer, verifier, security-auditor and data-qa (suggested only for projects that produce derived data). Any other role is added as a custom role during setup.

## Underlying Specification

The full prompt specification and agent execution rules are maintained at [`skills/engineering/orchestrator-setup/SKILL.md`](../../skills/engineering/orchestrator-setup/SKILL.md).
