# Orchestrator Setup

## What it does

`orchestrator-setup` installs a workflow in a project where the main session coordinates and specialised subagents do the work. It writes generic agent files (explorer, implementer, verifier, security-auditor and optional extras), the orchestrator rules, and a project-facts section into the project's instruction file.

It works for Claude Code and Codex, and for other harnesses through a docs URL. Model names are never stored in the skill: each run discovers the models that exist, groups them by capability tier, and writes the choice into the generated files.

## When to reach for it

You invoke this by typing `/orchestrator-setup`. It does not run on its own.

| Your situation | What `orchestrator-setup` gives back |
| --- | --- |
| A project with no agent setup | Agent files, an orchestrator rules block and a project-facts block, each shown as a diff before it is written |
| Models have changed | `update models only` rewrites just the model and effort fields |
| You want roles added or removed | The add or remove mode touches only those roles |
| The role catalog has changed | `resync` shows a diff of each role prompt against the newer catalog |
| You want to know what is installed | `status` prints each file's state and writes nothing |

## Underlying Specification

The full prompt specification and agent execution rules are maintained at [`skills/engineering/orchestrator-setup/SKILL.md`](../../skills/engineering/orchestrator-setup/SKILL.md).
